.class public abstract Landroid/view/animation/BaseInterpolator;
.super Ljava/lang/Object;
.source "BaseInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private mChangingConfiguration:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChangingConfiguration()I
    .registers 2

    .prologue
    .line 28
    iget v0, p0, mChangingConfiguration:I

    return v0
.end method

.method setChangingConfiguration(I)V
    .registers 2
    .param p1, "changingConfiguration"    # I

    .prologue
    .line 35
    iput p1, p0, mChangingConfiguration:I

    .line 36
    return-void
.end method
