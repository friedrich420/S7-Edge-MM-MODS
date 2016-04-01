.class Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
.super Ljava/lang/Object;
.source "BatteryStatsDumper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsDumper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PowerObject"
.end annotation


# instance fields
.field isSystem:Z

.field networkUsage:J

.field packageName:Ljava/lang/String;

.field powerUid:D

.field usageTime:J

.field wakeUpCount:I


# direct methods
.method private constructor <init>(DLjava/lang/String;ZJJI)V
    .registers 11
    .param p1, "power"    # D
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "isSystem"    # Z
    .param p5, "networkUsage"    # J
    .param p7, "usageTime"    # J
    .param p9, "wakeUpCount"    # I

    .prologue
    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 577
    iput-wide p1, p0, powerUid:D

    .line 578
    iput-object p3, p0, packageName:Ljava/lang/String;

    .line 579
    iput-boolean p4, p0, isSystem:Z

    .line 580
    iput-wide p5, p0, networkUsage:J

    .line 581
    iput-wide p7, p0, usageTime:J

    .line 582
    iput p9, p0, wakeUpCount:I

    .line 583
    return-void
.end method

.method synthetic constructor <init>(DLjava/lang/String;ZJJILcom/android/internal/os/BatteryStatsDumper$1;)V
    .registers 12
    .param p1, "x0"    # D
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Z
    .param p5, "x3"    # J
    .param p7, "x4"    # J
    .param p9, "x5"    # I
    .param p10, "x6"    # Lcom/android/internal/os/BatteryStatsDumper$1;

    .prologue
    .line 567
    invoke-direct/range {p0 .. p9}, <init>(DLjava/lang/String;ZJJI)V

    return-void
.end method
