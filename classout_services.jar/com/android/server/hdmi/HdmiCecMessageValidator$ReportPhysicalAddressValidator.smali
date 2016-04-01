.class Lcom/android/server/hdmi/HdmiCecMessageValidator$ReportPhysicalAddressValidator;
.super Ljava/lang/Object;
.source "HdmiCecMessageValidator.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecMessageValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReportPhysicalAddressValidator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;)V
    .registers 2

    .prologue
    .line 317
    iput-object p1, p0, this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/hdmi/HdmiCecMessageValidator;
    .param p2, "x1"    # Lcom/android/server/hdmi/HdmiCecMessageValidator$1;

    .prologue
    .line 317
    invoke-direct {p0, p1}, <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;)V

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .registers 5
    .param p1, "params"    # [B

    .prologue
    const/4 v0, 0x0

    .line 320
    array-length v1, p1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_7

    .line 321
    const/4 v0, 0x4

    .line 323
    :goto_6
    return v0

    :cond_7
    iget-object v1, p0, this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    # invokes: Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidPhysicalAddress([BI)Z
    invoke-static {v1, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$400(Lcom/android/server/hdmi/HdmiCecMessageValidator;[BI)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidType(I)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v0, 0x1

    :cond_19
    # invokes: Lcom/android/server/hdmi/HdmiCecMessageValidator;->toErrorCode(Z)I
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$500(Z)I

    move-result v0

    goto :goto_6
.end method
