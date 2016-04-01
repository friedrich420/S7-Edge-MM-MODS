.class Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;
.super Ljava/lang/Object;
.source "EnterprisePremiumVpnPolicyServiceV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VpnState"
.end annotation


# static fields
.field private static final RUNNING:I = 0x1

.field private static final STOPPED:I


# instance fields
.field private mCid:I

.field private mInterface:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mProfileName:Ljava/lang/String;

.field private mState:I

.field private mUid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "cid"    # I

    .prologue
    .line 3777
    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V

    .line 3778
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 12
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "cid"    # I

    .prologue
    .line 3774
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V

    .line 3775
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V
    .registers 7
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "cid"    # I
    .param p5, "interfaceName"    # Ljava/lang/String;
    .param p6, "state"    # I

    .prologue
    .line 3779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3780
    iput-object p1, p0, mProfileName:Ljava/lang/String;

    .line 3781
    iput-object p2, p0, mPackageName:Ljava/lang/String;

    .line 3782
    iput-object p5, p0, mInterface:Ljava/lang/String;

    .line 3783
    iput p3, p0, mUid:I

    .line 3784
    iput p4, p0, mCid:I

    .line 3785
    iput p6, p0, mState:I

    .line 3786
    return-void
.end method


# virtual methods
.method public getCid()I
    .registers 2

    .prologue
    .line 3812
    iget v0, p0, mCid:I

    return v0
.end method

.method public getInterface()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3800
    iget-object v0, p0, mInterface:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3794
    iget-object v0, p0, mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3788
    iget-object v0, p0, mProfileName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 3818
    iget v0, p0, mState:I

    return v0
.end method

.method public getUid()I
    .registers 2

    .prologue
    .line 3806
    iget v0, p0, mUid:I

    return v0
.end method

.method public setCid(I)V
    .registers 2
    .param p1, "cid"    # I

    .prologue
    .line 3815
    iput p1, p0, mCid:I

    .line 3816
    return-void
.end method

.method public setInterface(Ljava/lang/String;)V
    .registers 2
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 3803
    iput-object p1, p0, mInterface:Ljava/lang/String;

    .line 3804
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3797
    iput-object p1, p0, mPackageName:Ljava/lang/String;

    .line 3798
    return-void
.end method

.method public setProfileName(Ljava/lang/String;)V
    .registers 2
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 3791
    iput-object p1, p0, mProfileName:Ljava/lang/String;

    .line 3792
    return-void
.end method

.method public setState(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 3821
    iput p1, p0, mState:I

    .line 3822
    return-void
.end method

.method public setUid(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 3809
    iput p1, p0, mUid:I

    .line 3810
    return-void
.end method
