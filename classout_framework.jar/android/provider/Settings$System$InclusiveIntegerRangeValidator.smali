.class final Landroid/provider/Settings$System$InclusiveIntegerRangeValidator;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/provider/Settings$System$Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings$System;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InclusiveIntegerRangeValidator"
.end annotation


# instance fields
.field private final mMax:I

.field private final mMin:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 2248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2249
    iput p1, p0, mMin:I

    .line 2250
    iput p2, p0, mMax:I

    .line 2251
    return-void
.end method


# virtual methods
.method public validate(Ljava/lang/String;)Z
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2256
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2257
    .local v1, "intValue":I
    iget v3, p0, mMin:I

    if-lt v1, v3, :cond_e

    iget v3, p0, mMax:I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_b} :catch_f

    if-gt v1, v3, :cond_e

    const/4 v2, 0x1

    .line 2259
    .end local v1    # "intValue":I
    :cond_e
    :goto_e
    return v2

    .line 2258
    :catch_f
    move-exception v0

    .line 2259
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_e
.end method
