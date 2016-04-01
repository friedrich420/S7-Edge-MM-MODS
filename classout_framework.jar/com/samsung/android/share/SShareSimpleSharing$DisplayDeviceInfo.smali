.class final Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;
.super Ljava/lang/Object;
.source "SShareSimpleSharing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/share/SShareSimpleSharing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayDeviceInfo"
.end annotation


# instance fields
.field devType:I

.field deviceId:Ljava/lang/CharSequence;

.field deviceName:Ljava/lang/CharSequence;

.field displayLabel:Ljava/lang/CharSequence;

.field iconType:I

.field netType:I

.field number:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/samsung/android/share/SShareSimpleSharing;


# direct methods
.method constructor <init>(Lcom/samsung/android/share/SShareSimpleSharing;Ljava/lang/CharSequence;)V
    .registers 5
    .param p2, "pInitText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 748
    iput-object p1, p0, this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 745
    iput v0, p0, netType:I

    .line 746
    iput v0, p0, devType:I

    .line 749
    iput-object p2, p0, displayLabel:Ljava/lang/CharSequence;

    .line 750
    iput-object p2, p0, deviceName:Ljava/lang/CharSequence;

    .line 751
    iput-object v1, p0, deviceId:Ljava/lang/CharSequence;

    .line 752
    iput-object v1, p0, number:Ljava/lang/CharSequence;

    .line 753
    iput v0, p0, iconType:I

    .line 754
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/share/SShareSimpleSharing;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;III)V
    .registers 10
    .param p2, "pDeviceName"    # Ljava/lang/CharSequence;
    .param p3, "pLabel"    # Ljava/lang/CharSequence;
    .param p4, "pDeviceId"    # Ljava/lang/CharSequence;
    .param p5, "pNumber"    # Ljava/lang/CharSequence;
    .param p6, "pIconType"    # I
    .param p7, "network"    # I
    .param p8, "device"    # I

    .prologue
    const/4 v0, 0x0

    .line 756
    iput-object p1, p0, this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 745
    iput v0, p0, netType:I

    .line 746
    iput v0, p0, devType:I

    .line 757
    iput-object p3, p0, displayLabel:Ljava/lang/CharSequence;

    .line 758
    iput-object p2, p0, deviceName:Ljava/lang/CharSequence;

    .line 759
    iput-object p4, p0, deviceId:Ljava/lang/CharSequence;

    .line 760
    iput-object p5, p0, number:Ljava/lang/CharSequence;

    .line 761
    iput p6, p0, iconType:I

    .line 762
    iput p7, p0, netType:I

    .line 763
    iput p8, p0, devType:I

    .line 764
    return-void
.end method
