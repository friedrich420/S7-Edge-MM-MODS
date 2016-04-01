.class interface abstract Lcom/android/server/AlarmManagerServiceExt$Sales;
.super Ljava/lang/Object;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Sales"
.end annotation


# static fields
.field public static final ATT:Z

.field public static final CANADA:Z

.field public static final CHINA:Z

.field public static final JAPAN:Z

.field public static final MPCS:Z

.field public static final NORTH_AMERICA:Z

.field public static final SALES_CODE:Ljava/lang/String;

.field public static final SPR:Z

.field public static final TMO:Z

.field public static final USCC:Z

.field public static final VZW:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3583
    const-string/jumbo v0, "ro.csc.sales_code"

    const-string v3, "NONE"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, SALES_CODE:Ljava/lang/String;

    .line 3585
    const-string v0, "VZW"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, VZW:Z

    .line 3587
    const-string v0, "ATT"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    const-string v0, "AIO"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    const-string v0, "CRI"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f4

    :cond_3d
    move v0, v2

    :goto_3e
    sput-boolean v0, ATT:Z

    .line 3589
    const-string v0, "TMB"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, TMO:Z

    .line 3591
    const-string v0, "TMK"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, MPCS:Z

    .line 3593
    const-string v0, "SPR"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c

    const-string v0, "BST"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c

    const-string v0, "VMU"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c

    const-string v0, "XAS"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f7

    :cond_7c
    move v0, v2

    :goto_7d
    sput-boolean v0, SPR:Z

    .line 3596
    const-string v0, "USC"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9d

    const-string v0, "LRA"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9d

    const-string v0, "ACG"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1fa

    :cond_9d
    move v0, v2

    :goto_9e
    sput-boolean v0, USCC:Z

    .line 3598
    const-string v0, "RWC"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e

    const-string v0, "FMC"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e

    const-string v0, "MTA"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e

    const-string v0, "CHR"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e

    const-string v0, "MTS"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e

    const-string v0, "TLS"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e

    const-string v0, "KDO"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e

    const-string v0, "SPC"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e

    const-string v0, "CLN"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e

    const-string v0, "BMC"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e

    const-string v0, "VMC"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e

    const-string v0, "PCM"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e

    const-string v0, "SOL"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e

    const-string v0, "BWA"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e

    const-string v0, "GLW"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e

    const-string v0, "VTR"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e

    const-string v0, "ESK"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e

    const-string v0, "PMB"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e

    const-string v0, "XAC"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1fd

    :cond_15e
    move v0, v2

    :goto_15f
    sput-boolean v0, CANADA:Z

    .line 3604
    const-string v0, "CHN"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_193

    const-string v0, "CHU"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_193

    const-string v0, "CTC"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_193

    const-string v0, "CHM"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_193

    const-string v0, "CHC"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_200

    :cond_193
    move v0, v2

    :goto_194
    sput-boolean v0, CHINA:Z

    .line 3607
    const-string v0, "DCM"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, JAPAN:Z

    .line 3609
    sget-boolean v0, VZW:Z

    if-nez v0, :cond_1f0

    sget-boolean v0, ATT:Z

    if-nez v0, :cond_1f0

    sget-boolean v0, TMO:Z

    if-nez v0, :cond_1f0

    sget-boolean v0, SPR:Z

    if-nez v0, :cond_1f0

    sget-boolean v0, USCC:Z

    if-nez v0, :cond_1f0

    const-string v0, "XAR"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f0

    const-string v0, "MTR"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f0

    const-string v0, "SPT"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f0

    const-string v0, "CSP"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f0

    const-string v0, "TFN"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f0

    const-string v0, "BNN"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f1

    :cond_1f0
    move v1, v2

    :cond_1f1
    sput-boolean v1, NORTH_AMERICA:Z

    return-void

    :cond_1f4
    move v0, v1

    .line 3587
    goto/16 :goto_3e

    :cond_1f7
    move v0, v1

    .line 3593
    goto/16 :goto_7d

    :cond_1fa
    move v0, v1

    .line 3596
    goto/16 :goto_9e

    :cond_1fd
    move v0, v1

    .line 3598
    goto/16 :goto_15f

    :cond_200
    move v0, v1

    .line 3604
    goto :goto_194
.end method
