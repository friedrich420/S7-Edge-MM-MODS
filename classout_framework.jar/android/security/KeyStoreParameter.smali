.class public final Landroid/security/KeyStoreParameter;
.super Ljava/lang/Object;
.source "KeyStoreParameter.java"

# interfaces
.implements Ljava/security/KeyStore$ProtectionParameter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/KeyStoreParameter$1;,
        Landroid/security/KeyStoreParameter$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mFlags:I


# direct methods
.method private constructor <init>(I)V
    .registers 2
    .param p1, "flags"    # I

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, mFlags:I

    .line 56
    return-void
.end method

.method synthetic constructor <init>(ILandroid/security/KeyStoreParameter$1;)V
    .registers 3
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/security/KeyStoreParameter$1;

    .prologue
    .line 50
    invoke-direct {p0, p1}, <init>(I)V

    return-void
.end method


# virtual methods
.method public getFlags()I
    .registers 2

    .prologue
    .line 62
    iget v0, p0, mFlags:I

    return v0
.end method

.method public isEncryptionRequired()Z
    .registers 2

    .prologue
    .line 79
    iget v0, p0, mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
