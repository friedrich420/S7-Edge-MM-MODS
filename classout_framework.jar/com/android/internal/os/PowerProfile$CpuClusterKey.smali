.class public Lcom/android/internal/os/PowerProfile$CpuClusterKey;
.super Ljava/lang/Object;
.source "PowerProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/PowerProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CpuClusterKey"
.end annotation


# instance fields
.field private final numCpus:I

.field private final powerKey:Ljava/lang/String;

.field private final timeKey:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p1, "timeKey"    # Ljava/lang/String;
    .param p2, "powerKey"    # Ljava/lang/String;
    .param p3, "numCpus"    # I

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    iput-object p1, p0, timeKey:Ljava/lang/String;

    .line 322
    iput-object p2, p0, powerKey:Ljava/lang/String;

    .line 323
    iput p3, p0, numCpus:I

    .line 324
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/os/PowerProfile$1;)V
    .registers 5
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/android/internal/os/PowerProfile$1;

    .prologue
    .line 315
    invoke-direct {p0, p1, p2, p3}, <init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    .prologue
    .line 315
    iget v0, p0, numCpus:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    .prologue
    .line 315
    iget-object v0, p0, timeKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/os/PowerProfile$CpuClusterKey;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/os/PowerProfile$CpuClusterKey;

    .prologue
    .line 315
    iget-object v0, p0, powerKey:Ljava/lang/String;

    return-object v0
.end method
