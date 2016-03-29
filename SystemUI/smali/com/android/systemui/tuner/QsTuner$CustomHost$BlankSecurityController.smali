.class Lcom/android/systemui/tuner/QsTuner$CustomHost$BlankSecurityController;
.super Ljava/lang/Object;
.source "QsTuner.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/SecurityController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/QsTuner$CustomHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlankSecurityController"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/tuner/QsTuner$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/tuner/QsTuner$1;

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/android/systemui/tuner/QsTuner$CustomHost$BlankSecurityController;-><init>()V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;

    .prologue
    .line 367
    return-void
.end method

.method public getDeviceOwnerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrimaryVpnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProfileOwnerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProfileVpnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasDeviceOwner()Z
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method public hasProfileOwner()Z
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x0

    return v0
.end method

.method public isVpnEnabled()Z
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x0

    return v0
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;

    .prologue
    .line 371
    return-void
.end method
