.class public final Landroid/security/KeyStoreParameter$Builder;
.super Ljava/lang/Object;
.source "KeyStoreParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/KeyStoreParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mFlags:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    if-nez p1, :cond_d

    .line 113
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_d
    return-void
.end method


# virtual methods
.method public build()Landroid/security/KeyStoreParameter;
    .registers 4

    .prologue
    .line 148
    new-instance v0, Landroid/security/KeyStoreParameter;

    iget v1, p0, mFlags:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/security/KeyStoreParameter;-><init>(ILandroid/security/KeyStoreParameter$1;)V

    return-object v0
.end method

.method public setEncryptionRequired(Z)Landroid/security/KeyStoreParameter$Builder;
    .registers 3
    .param p1, "required"    # Z

    .prologue
    .line 132
    if-eqz p1, :cond_9

    .line 133
    iget v0, p0, mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, mFlags:I

    .line 137
    :goto_8
    return-object p0

    .line 135
    :cond_9
    iget v0, p0, mFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, mFlags:I

    goto :goto_8
.end method
