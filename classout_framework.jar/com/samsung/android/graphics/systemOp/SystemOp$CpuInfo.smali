.class public Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;
.super Ljava/lang/Object;
.source "SystemOp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/graphics/systemOp/SystemOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CpuInfo"
.end annotation


# instance fields
.field public cpuArchitecture:Ljava/lang/String;

.field public cpuImplementer:I

.field public cpuPart:I

.field public cpuRevision:I

.field public cpuVariant:I

.field public features:Ljava/lang/String;

.field public hardware:Ljava/lang/String;

.field public processor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
