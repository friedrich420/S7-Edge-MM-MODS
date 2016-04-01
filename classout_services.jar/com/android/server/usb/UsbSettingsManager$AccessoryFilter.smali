.class Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
.super Ljava/lang/Object;
.source "UsbSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessoryFilter"
.end annotation


# instance fields
.field public final mManufacturer:Ljava/lang/String;

.field public final mModel:Ljava/lang/String;

.field public final mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbAccessory;)V
    .registers 3
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .prologue
    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mManufacturer:Ljava/lang/String;

    .line 422
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mModel:Ljava/lang/String;

    .line 423
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mVersion:Ljava/lang/String;

    .line 424
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "manufacturer"    # Ljava/lang/String;
    .param p2, "model"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;

    .prologue
    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    iput-object p1, p0, mManufacturer:Ljava/lang/String;

    .line 416
    iput-object p2, p0, mModel:Ljava/lang/String;

    .line 417
    iput-object p3, p0, mVersion:Ljava/lang/String;

    .line 418
    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    .registers 9
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 428
    const/4 v2, 0x0

    .line 429
    .local v2, "manufacturer":Ljava/lang/String;
    const/4 v3, 0x0

    .line 430
    .local v3, "model":Ljava/lang/String;
    const/4 v6, 0x0

    .line 432
    .local v6, "version":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 433
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_35

    .line 434
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    .line 435
    .local v4, "name":Ljava/lang/String;
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 437
    .local v5, "value":Ljava/lang/String;
    const-string/jumbo v7, "manufacturer"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 438
    move-object v2, v5

    .line 433
    :cond_1c
    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 439
    :cond_1f
    const-string/jumbo v7, "model"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 440
    move-object v3, v5

    goto :goto_1c

    .line 441
    :cond_2a
    const-string/jumbo v7, "version"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 442
    move-object v6, v5

    goto :goto_1c

    .line 445
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_35
    new-instance v7, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    invoke-direct {v7, v2, v3, v6}, <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 479
    iget-object v4, p0, mManufacturer:Ljava/lang/String;

    if-eqz v4, :cond_e

    iget-object v4, p0, mModel:Ljava/lang/String;

    if-eqz v4, :cond_e

    iget-object v4, p0, mVersion:Ljava/lang/String;

    if-nez v4, :cond_10

    :cond_e
    move v2, v3

    .line 494
    :cond_f
    :goto_f
    return v2

    .line 482
    :cond_10
    instance-of v4, p1, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    if-eqz v4, :cond_37

    move-object v1, p1

    .line 483
    check-cast v1, Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    .line 484
    .local v1, "filter":Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    iget-object v4, p0, mManufacturer:Ljava/lang/String;

    iget-object v5, v1, mManufacturer:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    iget-object v4, p0, mModel:Ljava/lang/String;

    iget-object v5, v1, mModel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    iget-object v4, p0, mVersion:Ljava/lang/String;

    iget-object v5, v1, mVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    :cond_35
    move v2, v3

    goto :goto_f

    .line 488
    .end local v1    # "filter":Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;
    :cond_37
    instance-of v4, p1, Landroid/hardware/usb/UsbAccessory;

    if-eqz v4, :cond_64

    move-object v0, p1

    .line 489
    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    .line 490
    .local v0, "accessory":Landroid/hardware/usb/UsbAccessory;
    iget-object v4, p0, mManufacturer:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    iget-object v4, p0, mModel:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    iget-object v4, p0, mVersion:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    :cond_62
    move v2, v3

    goto :goto_f

    .end local v0    # "accessory":Landroid/hardware/usb/UsbAccessory;
    :cond_64
    move v2, v3

    .line 494
    goto :goto_f
.end method

.method public hashCode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 499
    iget-object v0, p0, mManufacturer:Ljava/lang/String;

    if-nez v0, :cond_12

    move v0, v1

    :goto_6
    iget-object v2, p0, mModel:Ljava/lang/String;

    if-nez v2, :cond_19

    move v2, v1

    :goto_b
    xor-int/2addr v0, v2

    iget-object v2, p0, mVersion:Ljava/lang/String;

    if-nez v2, :cond_20

    :goto_10
    xor-int/2addr v0, v1

    return v0

    :cond_12
    iget-object v0, p0, mManufacturer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_19
    iget-object v2, p0, mModel:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_20
    iget-object v1, p0, mVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_10
.end method

.method public matches(Landroid/hardware/usb/UsbAccessory;)Z
    .registers 5
    .param p1, "acc"    # Landroid/hardware/usb/UsbAccessory;

    .prologue
    const/4 v0, 0x0

    .line 463
    iget-object v1, p0, mManufacturer:Ljava/lang/String;

    if-eqz v1, :cond_12

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, mManufacturer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 466
    :cond_11
    :goto_11
    return v0

    .line 464
    :cond_12
    iget-object v1, p0, mModel:Ljava/lang/String;

    if-eqz v1, :cond_22

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, mModel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 465
    :cond_22
    iget-object v1, p0, mVersion:Ljava/lang/String;

    if-eqz v1, :cond_32

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, mVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 466
    :cond_32
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public matches(Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;)Z
    .registers 5
    .param p1, "f"    # Lcom/android/server/usb/UsbSettingsManager$AccessoryFilter;

    .prologue
    const/4 v0, 0x0

    .line 470
    iget-object v1, p0, mManufacturer:Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v1, p1, mManufacturer:Ljava/lang/String;

    iget-object v2, p0, mManufacturer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 473
    :cond_f
    :goto_f
    return v0

    .line 471
    :cond_10
    iget-object v1, p0, mModel:Ljava/lang/String;

    if-eqz v1, :cond_1e

    iget-object v1, p1, mModel:Ljava/lang/String;

    iget-object v2, p0, mModel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 472
    :cond_1e
    iget-object v1, p0, mVersion:Ljava/lang/String;

    if-eqz v1, :cond_2c

    iget-object v1, p1, mVersion:Ljava/lang/String;

    iget-object v2, p0, mVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 473
    :cond_2c
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccessoryFilter[mManufacturer=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mManufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mModel=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mVersion=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 449
    const-string/jumbo v0, "usb-accessory"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 450
    iget-object v0, p0, mManufacturer:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 451
    const-string/jumbo v0, "manufacturer"

    iget-object v1, p0, mManufacturer:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 453
    :cond_13
    iget-object v0, p0, mModel:Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 454
    const-string/jumbo v0, "model"

    iget-object v1, p0, mModel:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 456
    :cond_1f
    iget-object v0, p0, mVersion:Ljava/lang/String;

    if-eqz v0, :cond_2b

    .line 457
    const-string/jumbo v0, "version"

    iget-object v1, p0, mVersion:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 459
    :cond_2b
    const-string/jumbo v0, "usb-accessory"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 460
    return-void
.end method
