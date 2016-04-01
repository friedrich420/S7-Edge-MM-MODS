.class public Lcom/android/server/enterprise/sso/SSOVersion;
.super Ljava/lang/Object;
.source "SSOVersion.java"


# static fields
.field private static final KNOX_ADS_PW_CHANGE_VERSION:Ljava/lang/String; = "2.5.0"

.field private static final KNOX_ADS_VERSION:Ljava/lang/String; = "2.4.0"

.field private static final KNOX_GENERIC_SSO_VERSION:Ljava/lang/String; = "2.1.1"

.field private static final KNOX_SSO_KERBEROS_CERT_VERSION:Ljava/lang/String; = "2.4.1"

.field private static final KNOX_SSO_NUMBER:Ljava/lang/String; = "3"

.field private static final KNOX_SSO_VERSION:Ljava/lang/String; = "1.0.0"

.field private static final KNOX_SSO_VERSION_NOT_AVAILABLE:Ljava/lang/String; = "N/A"

.field private static final PROP_KNOX_SSO_VERSION:Ljava/lang/String; = "net.knoxsso.version"

.field private static final TAG:Ljava/lang/String; = "SSOVersion"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNumber()Ljava/lang/String;
    .registers 1

    .prologue
    .line 70
    const-string v0, "3"

    return-object v0
.end method

.method public static getVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const-string v2, "N/A"

    .line 40
    .local v2, "version":Ljava/lang/String;
    if-nez p0, :cond_6

    move-object v3, v2

    .line 65
    .end local v2    # "version":Ljava/lang/String;
    .local v3, "version":Ljava/lang/String;
    :goto_5
    return-object v3

    .line 44
    .end local v3    # "version":Ljava/lang/String;
    .restart local v2    # "version":Ljava/lang/String;
    :cond_6
    :try_start_6
    const-string/jumbo v4, "persona"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    .line 45
    .local v1, "pm":Landroid/os/PersonaManager;
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v4

    sget-object v5, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_2_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual {v5}, Landroid/os/PersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v5

    if-ge v4, v5, :cond_23

    .line 46
    const-string v2, "1.0.0"

    .end local v1    # "pm":Landroid/os/PersonaManager;
    :goto_21
    move-object v3, v2

    .line 65
    .end local v2    # "version":Ljava/lang/String;
    .restart local v3    # "version":Ljava/lang/String;
    goto :goto_5

    .line 47
    .end local v3    # "version":Ljava/lang/String;
    .restart local v1    # "pm":Landroid/os/PersonaManager;
    .restart local v2    # "version":Ljava/lang/String;
    :cond_23
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v4

    sget-object v5, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual {v5}, Landroid/os/PersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v5

    if-ge v4, v5, :cond_36

    .line 48
    const-string v2, "2.1.1"

    goto :goto_21

    .line 49
    :cond_36
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v4

    sget-object v5, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_1:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual {v5}, Landroid/os/PersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v5

    if-ge v4, v5, :cond_49

    .line 50
    const-string v2, "2.4.0"

    goto :goto_21

    .line 51
    :cond_49
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v4

    sget-object v5, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-virtual {v5}, Landroid/os/PersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v5

    if-ge v4, v5, :cond_5c

    .line 52
    const-string v2, "2.4.1"

    goto :goto_21

    .line 54
    :cond_5c
    const-string v2, "2.5.0"
    :try_end_5e
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_5e} :catch_5f
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_5e} :catch_80
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_5e} :catch_a1

    goto :goto_21

    .line 55
    .end local v1    # "pm":Landroid/os/PersonaManager;
    :catch_5f
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 57
    const-string v4, "SSOVersion"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SSOVersion Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 58
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_80
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 60
    const-string v4, "SSOVersion"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SSOVersion Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 61
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_a1
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    const-string v4, "SSOVersion"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SSOVersion Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21
.end method

.method public static writeVersionInProperties(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const-string v0, "SSOVersion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeVersionInProperties : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string/jumbo v0, "net.knoxsso.version"

    invoke-static {p0}, getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method
