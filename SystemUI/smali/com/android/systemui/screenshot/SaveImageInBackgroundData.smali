.class Lcom/android/systemui/screenshot/SaveImageInBackgroundData;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"


# instance fields
.field context:Landroid/content/Context;

.field finisher:Ljava/lang/Runnable;

.field iconSize:I

.field image:Landroid/graphics/Bitmap;

.field imageUri:Landroid/net/Uri;

.field previewWidth:I

.field previewheight:I

.field result:I

.field screenCaptureType:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method clearContext()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 126
    return-void
.end method

.method clearImage()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 121
    iput-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->iconSize:I

    .line 123
    return-void
.end method
