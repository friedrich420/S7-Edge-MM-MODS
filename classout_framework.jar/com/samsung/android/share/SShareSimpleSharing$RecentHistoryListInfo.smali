.class final Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
.super Ljava/lang/Object;
.source "SShareSimpleSharing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/share/SShareSimpleSharing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RecentHistoryListInfo"
.end annotation


# instance fields
.field deviceInfo:Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;

.field displayLabel:Ljava/lang/CharSequence;

.field extraInfo:Ljava/lang/CharSequence;

.field iconType:I

.field photoIcon:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/samsung/android/share/SShareSimpleSharing;


# direct methods
.method constructor <init>(Lcom/samsung/android/share/SShareSimpleSharing;Ljava/lang/CharSequence;)V
    .registers 5
    .param p2, "pInitText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 774
    iput-object p1, p0, this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 775
    iput-object p2, p0, displayLabel:Ljava/lang/CharSequence;

    .line 776
    iput-object v1, p0, extraInfo:Ljava/lang/CharSequence;

    .line 777
    const/4 v0, 0x0

    iput v0, p0, iconType:I

    .line 778
    iput-object v1, p0, photoIcon:Landroid/graphics/drawable/Drawable;

    .line 779
    iput-object v1, p0, deviceInfo:Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;

    .line 780
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/share/SShareSimpleSharing;Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .registers 7
    .param p2, "pLabel"    # Ljava/lang/CharSequence;
    .param p3, "pIconType"    # I
    .param p4, "pPhoto"    # Landroid/graphics/drawable/Drawable;
    .param p5, "pExtraInfo"    # Ljava/lang/CharSequence;

    .prologue
    .line 782
    iput-object p1, p0, this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 783
    iput-object p2, p0, displayLabel:Ljava/lang/CharSequence;

    .line 784
    iput p3, p0, iconType:I

    .line 785
    iput-object p4, p0, photoIcon:Landroid/graphics/drawable/Drawable;

    .line 786
    iput-object p5, p0, extraInfo:Ljava/lang/CharSequence;

    .line 787
    const/4 v0, 0x0

    iput-object v0, p0, deviceInfo:Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;

    .line 788
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/share/SShareSimpleSharing;Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;)V
    .registers 7
    .param p2, "pLabel"    # Ljava/lang/CharSequence;
    .param p3, "pIconType"    # I
    .param p4, "pPhoto"    # Landroid/graphics/drawable/Drawable;
    .param p5, "pExtraInfo"    # Ljava/lang/CharSequence;
    .param p6, "pDeviceInfo"    # Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;

    .prologue
    .line 790
    iput-object p1, p0, this$0:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 791
    iput-object p2, p0, displayLabel:Ljava/lang/CharSequence;

    .line 792
    iput p3, p0, iconType:I

    .line 793
    iput-object p4, p0, photoIcon:Landroid/graphics/drawable/Drawable;

    .line 794
    iput-object p5, p0, extraInfo:Ljava/lang/CharSequence;

    .line 795
    iput-object p6, p0, deviceInfo:Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;

    .line 796
    return-void
.end method
