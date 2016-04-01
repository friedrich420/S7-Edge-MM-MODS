.class public Lcom/sec/epdg/handover/EpdgImsListener;
.super Ljava/lang/Object;
.source "EpdgImsListener.java"


# static fields
.field private static mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hdlr"    # Landroid/os/Handler;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/sec/epdg/handover/EpdgImsListener;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hdlr"    # Landroid/os/Handler;

    .prologue
    .line 28
    invoke-static {}, isIms60()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 29
    invoke-static {p0, p1}, Lcom/sec/epdg/handover/EpdgImsListener60;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v0

    sput-object v0, mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    .line 33
    :goto_c
    sget-object v0, mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    return-object v0

    .line 31
    :cond_f
    invoke-static {p0, p1}, Lcom/sec/epdg/handover/EpdgImsListener50;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v0

    sput-object v0, mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    goto :goto_c
.end method

.method private static isIms60()Z
    .registers 3

    .prologue
    .line 19
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_IMS_FrameworkVersion"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "version":Ljava/lang/String;
    const-string v1, "6.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    .registers 2

    .prologue
    .line 48
    sget-object v0, mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v0}, getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v0

    return-object v0
.end method

.method public getE911CallCount()I
    .registers 2

    .prologue
    .line 42
    sget-object v0, mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v0}, getE911CallCount()I

    move-result v0

    return v0
.end method

.method public getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;
    .registers 2

    .prologue
    .line 60
    sget-object v0, mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v0}, getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v0

    return-object v0
.end method

.method public getIpmeStatus()Z
    .registers 2

    .prologue
    .line 64
    sget-object v0, mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v0}, getIpmeStatus()Z

    move-result v0

    return v0
.end method

.method public getNonE911CallCount()I
    .registers 2

    .prologue
    .line 45
    sget-object v0, mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v0}, getNonE911CallCount()I

    move-result v0

    return v0
.end method

.method public getRegStatus()Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;
    .registers 2

    .prologue
    .line 51
    sget-object v0, mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v0}, getRegStatus()Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    move-result-object v0

    return-object v0
.end method

.method public getVoWifiSessionConnected()Z
    .registers 2

    .prologue
    .line 68
    sget-object v0, mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v0}, getVoWifiSessionConnected()Z

    move-result v0

    return v0
.end method

.method public onEpdgSettingChanged(Lcom/sec/epdg/EpdgSettings;)V
    .registers 3
    .param p1, "settings"    # Lcom/sec/epdg/EpdgSettings;

    .prologue
    .line 57
    sget-object v0, mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v0, p1}, onEpdgSettingChanged(Lcom/sec/epdg/EpdgSettings;)V

    .line 58
    return-void
.end method

.method public registerListener()V
    .registers 2

    .prologue
    .line 36
    sget-object v0, mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v0}, registerListener()V

    .line 37
    return-void
.end method

.method public setEcbmChanged(Z)V
    .registers 3
    .param p1, "modeStart"    # Z

    .prologue
    .line 54
    sget-object v0, mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v0, p1}, setEcbmChanged(Z)V

    .line 55
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    sget-object v0, mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v0}, toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterListener()V
    .registers 2

    .prologue
    .line 39
    sget-object v0, mEpdgImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v0}, unregisterListener()V

    .line 40
    return-void
.end method
