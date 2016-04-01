.class Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
.super Ljava/lang/Object;
.source "HdmiCecLocalDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecLocalDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActiveSource"
.end annotation


# instance fields
.field logicalAddress:I

.field physicalAddress:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p0}, invalidate()V

    .line 69
    return-void
.end method

.method public constructor <init>(II)V
    .registers 3
    .param p1, "logical"    # I
    .param p2, "physical"    # I

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, logicalAddress:I

    .line 72
    iput p2, p0, physicalAddress:I

    .line 73
    return-void
.end method

.method public static of(II)Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    .registers 3
    .param p0, "logical"    # I
    .param p1, "physical"    # I

    .prologue
    .line 78
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    invoke-direct {v0, p0, p1}, <init>(II)V

    return-object v0
.end method

.method public static of(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    .registers 4
    .param p0, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .prologue
    .line 75
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    iget v1, p0, logicalAddress:I

    iget v2, p0, physicalAddress:I

    invoke-direct {v0, v1, v2}, <init>(II)V

    return-object v0
.end method


# virtual methods
.method public equals(II)Z
    .registers 4
    .param p1, "logical"    # I
    .param p2, "physical"    # I

    .prologue
    .line 88
    iget v0, p0, logicalAddress:I

    if-ne v0, p1, :cond_a

    iget v0, p0, physicalAddress:I

    if-ne v0, p2, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 92
    instance-of v2, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    if-eqz v2, :cond_15

    move-object v0, p1

    .line 93
    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 94
    .local v0, "that":Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    iget v2, v0, logicalAddress:I

    iget v3, p0, logicalAddress:I

    if-ne v2, v3, :cond_15

    iget v2, v0, physicalAddress:I

    iget v3, p0, physicalAddress:I

    if-ne v2, v3, :cond_15

    const/4 v1, 0x1

    .line 97
    .end local v0    # "that":Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    :cond_15
    return v1
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 101
    iget v0, p0, logicalAddress:I

    mul-int/lit8 v0, v0, 0x1d

    iget v1, p0, physicalAddress:I

    add-int/2addr v0, v1

    return v0
.end method

.method public invalidate()V
    .registers 2

    .prologue
    .line 84
    const/4 v0, -0x1

    iput v0, p0, logicalAddress:I

    .line 85
    const v0, 0xffff

    iput v0, p0, physicalAddress:I

    .line 86
    return-void
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 81
    iget v0, p0, logicalAddress:I

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->isValidAddress(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 105
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 106
    .local v2, "s":Ljava/lang/StringBuffer;
    iget v3, p0, logicalAddress:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_36

    const-string/jumbo v0, "invalid"

    .line 108
    .local v0, "logicalAddressString":Ljava/lang/String;
    :goto_f
    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    iget v3, p0, physicalAddress:I

    const v4, 0xffff

    if-ne v3, v4, :cond_47

    const-string/jumbo v1, "invalid"

    .line 111
    .local v1, "physicalAddressString":Ljava/lang/String;
    :goto_22
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 106
    .end local v0    # "logicalAddressString":Ljava/lang/String;
    .end local v1    # "physicalAddressString":Ljava/lang/String;
    :cond_36
    const-string v3, "0x%02x"

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, logicalAddress:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 109
    .restart local v0    # "logicalAddressString":Ljava/lang/String;
    :cond_47
    const-string v3, "0x%04x"

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, physicalAddress:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_22
.end method
