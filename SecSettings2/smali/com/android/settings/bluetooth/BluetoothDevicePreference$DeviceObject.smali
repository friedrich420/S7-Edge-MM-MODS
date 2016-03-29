.class Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;
.super Ljava/lang/Object;
.source "BluetoothDevicePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothDevicePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceObject"
.end annotation


# instance fields
.field icon:Landroid/graphics/drawable/Drawable;

.field isBusy:Z

.field summary:I

.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/BluetoothDevicePreference;Ljava/lang/String;ILandroid/graphics/drawable/Drawable;Z)V
    .locals 1
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "summary"    # I
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "isBusy"    # Z

    .prologue
    .line 685
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;->this$0:Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 683
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;->isBusy:Z

    .line 686
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;->title:Ljava/lang/String;

    .line 687
    iput p3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;->summary:I

    .line 688
    iput-object p4, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;->icon:Landroid/graphics/drawable/Drawable;

    .line 689
    iput-boolean p5, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$DeviceObject;->isBusy:Z

    .line 690
    return-void
.end method
