package com.devonfw.tools.ide.url.tool.jmc;

import com.devonfw.tools.ide.url.model.folder.UrlVersion;
import com.devonfw.tools.ide.url.updater.GithubUrlUpdater;

/**
 * {@link GithubUrlUpdater} for java mission control.
 */
public class JmcUrlUpdater extends GithubUrlUpdater {

  @Override
  protected String getTool() {

    return "jmc";
  }

  @Override
  protected String getGithubOrganization() {

    return "adoptium";
  }

  @Override
  protected String getGithubRepository() {

    return "jmc-build";
  }

  @Override
  protected String getBaseUrl() {

    return GITHUB_BASE_URL;
  }


  @Override
  protected void addVersion(UrlVersion urlVersion) {

    String baseUrl = getBaseUrl() + "/adoptium/jmc-build/releases/download/${version}/org.openjdk.jmc-${version}-";

    doAddVersion(urlVersion, baseUrl + "win32.win32.x86_64.zip", WINDOWS);
    doAddVersion(urlVersion, baseUrl + "macosx.cocoa.x86_64.tar.gz", MAC);
    doAddVersion(urlVersion, baseUrl + "linux.gtk.x86_64.tar.gz", LINUX);
  }

  @Override
  public String getCpeVendor() {
    return "adoptium";
  }

  @Override
  public String getCpeProduct() {
    return "jmc-build";
  }
}
