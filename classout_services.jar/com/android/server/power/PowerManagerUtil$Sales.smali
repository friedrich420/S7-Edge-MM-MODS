.class public Lcom/android/server/power/PowerManagerUtil$Sales;
.super Ljava/lang/Object;
.source "PowerManagerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sales"
.end annotation


# static fields
.field public static final ATT:Z

.field public static final CANADA:Z

.field public static final CHINA:Z

.field public static final JAPAN:Z

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

    .line 205
    const-string/jumbo v0, "ro.csc.sales_code"

    const-string v3, "NONE"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, SALES_CODE:Ljava/lang/String;

    .line 206
    const-string v0, "VZW"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, VZW:Z

    .line 207
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

    if-eqz v0, :cond_1f7

    :cond_3d
    move v0, v2

    :goto_3e
    sput-boolean v0, ATT:Z

    .line 208
    const-string v0, "TMB"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    const-string v0, "TMK"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1fa

    :cond_54
    move v0, v2

    :goto_55
    sput-boolean v0, TMO:Z

    .line 209
    const-string v0, "SPR"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f

    const-string v0, "BST"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f

    const-string v0, "VMU"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f

    const-string v0, "XAS"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1fd

    :cond_7f
    move v0, v2

    :goto_80
    sput-boolean v0, SPR:Z

    .line 211
    const-string v0, "USC"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a0

    const-string v0, "LRA"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a0

    const-string v0, "ACG"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_200

    :cond_a0
    move v0, v2

    :goto_a1
    sput-boolean v0, USCC:Z

    .line 212
    const-string v0, "RWC"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_161

    const-string v0, "FMC"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_161

    const-string v0, "MTA"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_161

    const-string v0, "CHR"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_161

    const-string v0, "MTS"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_161

    const-string v0, "TLS"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_161

    const-string v0, "KDO"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_161

    const-string v0, "SPC"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_161

    const-string v0, "CLN"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_161

    const-string v0, "BMC"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_161

    const-string v0, "VMC"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_161

    const-string v0, "PCM"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_161

    const-string v0, "SOL"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_161

    const-string v0, "BWA"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_161

    const-string v0, "GLW"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_161

    const-string v0, "VTR"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_161

    const-string v0, "ESK"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_161

    const-string v0, "PMB"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_161

    const-string v0, "XAC"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_203

    :cond_161
    move v0, v2

    :goto_162
    sput-boolean v0, CANADA:Z

    .line 217
    const-string v0, "CHN"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_196

    const-string v0, "CHU"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_196

    const-string v0, "CTC"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_196

    const-string v0, "CHM"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_196

    const-string v0, "CHC"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_206

    :cond_196
    move v0, v2

    :goto_197
    sput-boolean v0, CHINA:Z

    .line 219
    const-string v0, "DCM"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, JAPAN:Z

    .line 220
    sget-boolean v0, VZW:Z

    if-nez v0, :cond_1f3

    sget-boolean v0, ATT:Z

    if-nez v0, :cond_1f3

    sget-boolean v0, TMO:Z

    if-nez v0, :cond_1f3

    sget-boolean v0, SPR:Z

    if-nez v0, :cond_1f3

    sget-boolean v0, USCC:Z

    if-nez v0, :cond_1f3

    const-string v0, "XAR"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f3

    const-string v0, "MTR"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f3

    const-string v0, "SPT"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f3

    const-string v0, "CSP"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f3

    const-string v0, "TFN"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f3

    const-string v0, "BNN"

    sget-object v3, SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f4

    :cond_1f3
    move v1, v2

    :cond_1f4
    sput-boolean v1, NORTH_AMERICA:Z

    return-void

    :cond_1f7
    move v0, v1

    .line 207
    goto/16 :goto_3e

    :cond_1fa
    move v0, v1

    .line 208
    goto/16 :goto_55

    :cond_1fd
    move v0, v1

    .line 209
    goto/16 :goto_80

    :cond_200
    move v0, v1

    .line 211
    goto/16 :goto_a1

    :cond_203
    move v0, v1

    .line 212
    goto/16 :goto_162

    :cond_206
    move v0, v1

    .line 217
    goto :goto_197
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
