.class Lcom/android/settings/accessories/LedCoverCallerIDList$ContactInfo;
.super Ljava/lang/Object;
.source "LedCoverCallerIDList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessories/LedCoverCallerIDList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContactInfo"
.end annotation


# instance fields
.field private contact_id:Ljava/lang/String;

.field private data15:[B

.field private display_name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/accessories/LedCoverCallerIDList;


# direct methods
.method public constructor <init>(Lcom/android/settings/accessories/LedCoverCallerIDList;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0
    .param p2, "contact_id"    # Ljava/lang/String;
    .param p3, "display_name"    # Ljava/lang/String;
    .param p4, "data15"    # [B

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->this$0:Lcom/android/settings/accessories/LedCoverCallerIDList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-object p2, p0, Lcom/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->contact_id:Ljava/lang/String;

    .line 270
    iput-object p3, p0, Lcom/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->display_name:Ljava/lang/String;

    .line 271
    iput-object p4, p0, Lcom/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->data15:[B

    .line 272
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 292
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 293
    iget-object v2, p0, Lcom/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->this$0:Lcom/android/settings/accessories/LedCoverCallerIDList;

    invoke-virtual {v2}, Lcom/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/settings/drawable/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settings/drawable/CircleFramedDrawable;

    move-result-object v1

    .line 297
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIconBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 283
    iget-object v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->data15:[B

    if-eqz v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->data15:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->data15:[B

    array-length v3, v3

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 287
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->display_name:Ljava/lang/String;

    return-object v0
.end method
