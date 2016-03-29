.class Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;
.super Ljava/lang/Object;
.source "LedCoverCallerIDSelectionList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContactInfoCheckBox"
.end annotation


# instance fields
.field private checked:Z

.field private contact_id:Ljava/lang/String;

.field private data15:[B

.field private display_name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;


# direct methods
.method public constructor <init>(Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0
    .param p2, "contact_id"    # Ljava/lang/String;
    .param p3, "display_name"    # Ljava/lang/String;
    .param p4, "data15"    # [B

    .prologue
    .line 459
    iput-object p1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;->this$0:Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    iput-object p2, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;->contact_id:Ljava/lang/String;

    .line 461
    iput-object p3, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;->display_name:Ljava/lang/String;

    .line 462
    iput-object p4, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;->data15:[B

    .line 463
    return-void
.end method


# virtual methods
.method public getChecked()Z
    .locals 1

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;->checked:Z

    return v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;->contact_id:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 483
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 484
    iget-object v2, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;->this$0:Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;

    invoke-virtual {v2}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/settings/drawable/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settings/drawable/CircleFramedDrawable;

    move-result-object v1

    .line 488
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIconBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 474
    iget-object v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;->data15:[B

    if-eqz v1, :cond_0

    .line 475
    iget-object v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;->data15:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;->data15:[B

    array-length v3, v3

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 478
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;->display_name:Ljava/lang/String;

    return-object v0
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "check"    # Z

    .prologue
    .line 496
    iput-boolean p1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;->checked:Z

    .line 497
    return-void
.end method
