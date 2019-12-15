# Copyright 2019 Attila Oláh
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# Version information.
# This is here to make it easier to update this file.
VERSIONS = {
    "ProdriveTechnologies/bazel-latex": "0.19",
    "bazelbuild/bazel-skylib": "1.0.2",
}
SHA256_SUMS = {
    "bazelbuild/bazel-skylib": "e5d90f0ec952883d56747b7604e2a15ee36e288bb556c3d0ed33e818a4d971f2",
    "ProdriveTechnologies/bazel-latex": "2d8d5f590cfc8aa8e6d155c37c2d3540f3ab4d23ac96a576cdda8a1cf1b1e3ed",
}

def register_repositories():
    """Fetch transitive dependencies.

    If the user wants to get a different version of these, they can just fetch
    it from their WORKSPACE before calling this function, or not call this
    function at all.
    """

    _github_archive(
        name = "bazel_latex",
        repo = "ProdriveTechnologies/bazel-latex",
        url = "archive/v{version}.tar.gz",
        strip_prefix = "bazel-latex-{version}",
    )

    # Skylib is a dependency of our own .bzl files.
    _github_archive(
        name = "bazel_skylib",
        repo = "bazelbuild/bazel-skylib",
        url = "archive/{version}.tar.gz",
        strip_prefix = "bazel-skylib-{version}",
    )

def _github_archive(name, repo, url, strip_prefix = None, vendor_build_file = False):
    """Add a GitHub repository, if not already present."""
    if name in native.existing_rules():
        return

    version = VERSIONS[repo]

    if strip_prefix:
        strip_prefix = strip_prefix.format(version = version)

    build_file = None
    if vendor_build_file:
        build_file = str(Label("//:{}.bazel".format(name)))

    http_archive(
        name = name,
        sha256 = SHA256_SUMS[repo],
        urls = [
            "https://github.com/" + repo + "/" + url.format(version = version),
        ],
        strip_prefix = strip_prefix,
        build_file = build_file,
    )
