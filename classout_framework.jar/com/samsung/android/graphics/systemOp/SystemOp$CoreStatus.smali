.class public Lcom/samsung/android/graphics/systemOp/SystemOp$CoreStatus;
.super Ljava/lang/Object;
.source "SystemOp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/graphics/systemOp/SystemOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CoreStatus"
.end annotation


# instance fields
.field public active:Z

.field public coreType:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
