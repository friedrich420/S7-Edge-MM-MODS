.class final Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
.super Ljava/lang/Object;
.source "UsbAlsaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbAlsaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AlsaDevice"
.end annotation


# static fields
.field public static final TYPE_CAPTURE:I = 0x2

.field public static final TYPE_MIDI:I = 0x3

.field public static final TYPE_PLAYBACK:I = 0x1

.field public static final TYPE_UNKNOWN:I


# instance fields
.field public mCard:I

.field public mDevice:I

.field public mType:I

.field final synthetic this$0:Lcom/android/server/usb/UsbAlsaManager;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbAlsaManager;III)V
    .registers 5
    .param p2, "type"    # I
    .param p3, "card"    # I
    .param p4, "device"    # I

    .prologue
    .line 105
    iput-object p1, p0, this$0:Lcom/android/server/usb/UsbAlsaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput p2, p0, mType:I

    .line 107
    iput p3, p0, mCard:I

    .line 108
    iput p4, p0, mDevice:I

    .line 109
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 112
    instance-of v2, p1, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;

    if-nez v2, :cond_6

    .line 116
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 115
    check-cast v0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;

    .line 116
    .local v0, "other":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    iget v2, p0, mType:I

    iget v3, v0, mType:I

    if-ne v2, v3, :cond_5

    iget v2, p0, mCard:I

    iget v3, v0, mCard:I

    if-ne v2, v3, :cond_5

    iget v2, p0, mDevice:I

    iget v3, v0, mDevice:I

    if-ne v2, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlsaDevice: [card: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mCard:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mDevice:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
