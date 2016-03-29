.class Lcom/android/settings/nearby/NearbyEnabler$HandleServerStart;
.super Ljava/lang/Object;
.source "NearbyEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nearby/NearbyEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandleServerStart"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/nearby/NearbyEnabler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/nearby/NearbyEnabler$1;

    .prologue
    .line 1167
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler$HandleServerStart;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1170
    # getter for: Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;
    invoke-static {}, Lcom/android/settings/nearby/NearbyEnabler;->access$700()Lcom/android/settings/nearby/IMediaServer;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    instance-of v3, p2, Ljava/lang/Boolean;

    if-nez v3, :cond_1

    :cond_0
    move v1, v2

    .line 1184
    .end local p2    # "newValue":Ljava/lang/Object;
    :goto_0
    return v1

    .line 1174
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    :try_start_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, v1, :cond_2

    .line 1175
    # getter for: Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;
    invoke-static {}, Lcom/android/settings/nearby/NearbyEnabler;->access$700()Lcom/android/settings/nearby/IMediaServer;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/settings/nearby/IMediaServer;->startMediaServer()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1179
    :catch_0
    move-exception v0

    .line 1180
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NearbyEnabler"

    const-string v3, "HandleServerStart"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 1181
    goto :goto_0

    .line 1177
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    # getter for: Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;
    invoke-static {}, Lcom/android/settings/nearby/NearbyEnabler;->access$700()Lcom/android/settings/nearby/IMediaServer;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/settings/nearby/IMediaServer;->stopMediaServer()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
