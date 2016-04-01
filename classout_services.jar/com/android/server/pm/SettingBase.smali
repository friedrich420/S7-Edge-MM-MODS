.class abstract Lcom/android/server/pm/SettingBase;
.super Ljava/lang/Object;
.source "SettingBase.java"


# instance fields
.field protected final mPermissionsState:Lcom/android/server/pm/PermissionsState;

.field pkgFlags:I

.field pkgPrivateFlags:I


# direct methods
.method constructor <init>(II)V
    .registers 4
    .param p1, "pkgFlags"    # I
    .param p2, "pkgPrivateFlags"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, setFlags(I)V

    .line 29
    invoke-virtual {p0, p2}, setPrivateFlags(I)V

    .line 30
    new-instance v0, Lcom/android/server/pm/PermissionsState;

    invoke-direct {v0}, Lcom/android/server/pm/PermissionsState;-><init>()V

    iput-object v0, p0, mPermissionsState:Lcom/android/server/pm/PermissionsState;

    .line 31
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/SettingBase;)V
    .registers 4
    .param p1, "base"    # Lcom/android/server/pm/SettingBase;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iget v0, p1, pkgFlags:I

    iput v0, p0, pkgFlags:I

    .line 35
    iget v0, p1, pkgPrivateFlags:I

    iput v0, p0, pkgPrivateFlags:I

    .line 36
    new-instance v0, Lcom/android/server/pm/PermissionsState;

    iget-object v1, p1, mPermissionsState:Lcom/android/server/pm/PermissionsState;

    invoke-direct {v0, v1}, Lcom/android/server/pm/PermissionsState;-><init>(Lcom/android/server/pm/PermissionsState;)V

    iput-object v0, p0, mPermissionsState:Lcom/android/server/pm/PermissionsState;

    .line 37
    return-void
.end method


# virtual methods
.method public getPermissionsState()Lcom/android/server/pm/PermissionsState;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, mPermissionsState:Lcom/android/server/pm/PermissionsState;

    return-object v0
.end method

.method setFlags(I)V
    .registers 3
    .param p1, "pkgFlags"    # I

    .prologue
    .line 44
    const v0, 0x40001

    and-int/2addr v0, p1

    iput v0, p0, pkgFlags:I

    .line 47
    return-void
.end method

.method setPrivateFlags(I)V
    .registers 3
    .param p1, "pkgPrivateFlags"    # I

    .prologue
    .line 50
    and-int/lit8 v0, p1, 0xc

    iput v0, p0, pkgPrivateFlags:I

    .line 53
    return-void
.end method
