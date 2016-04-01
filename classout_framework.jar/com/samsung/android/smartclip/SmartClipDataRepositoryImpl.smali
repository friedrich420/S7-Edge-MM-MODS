.class public Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
.super Ljava/lang/Object;
.source "SmartClipDataRepositoryImpl.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/samsung/android/smartclip/SmartClipDataRepository;


# static fields
.field public static final CONTENT_TYPE_AUDIO:Ljava/lang/String; = "music"

.field public static final CONTENT_TYPE_DEFAULT:Ljava/lang/String; = "image"

.field public static final CONTENT_TYPE_IMAGE:Ljava/lang/String; = "image"

.field public static final CONTENT_TYPE_NAMECARD:Ljava/lang/String; = "namecard"

.field public static final CONTENT_TYPE_VIDEO:Ljava/lang/String; = "video"

.field public static final CONTENT_TYPE_WEB:Ljava/lang/String; = "web"

.field public static final CONTENT_TYPE_YOUTUBE:Ljava/lang/String; = "youtube"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;",
            ">;"
        }
    .end annotation
.end field

.field protected static final FIELD_CAPTURED_IMAGE_PATH:Ljava/lang/String; = "captured_image_path"

.field protected static final FIELD_CAPTURED_IMAGE_STYLE:Ljava/lang/String; = "captured_image_style"

.field protected static final FIELD_CONTENT_RECT:Ljava/lang/String; = "content_rect"

.field protected static final FIELD_CONTENT_TYPE:Ljava/lang/String; = "content_type"

.field protected static final FIELD_META_TAGS:Ljava/lang/String; = "meta_tags"

.field protected static final FIELD_META_TAG_EXTRA_DATA:Ljava/lang/String; = "meta_tag_extra_value"

.field protected static final FIELD_META_TAG_TYPE:Ljava/lang/String; = "meta_tag_type"

.field protected static final FIELD_META_TAG_VALUE:Ljava/lang/String; = "meta_tag_value"

.field protected static final FIELD_REPOSITORY_ID:Ljava/lang/String; = "repository_id"

.field public static final IMAGE_STYLE_LASSO:I = 0x0

.field public static final IMAGE_STYLE_PIN_MODE:I = 0x3

.field public static final IMAGE_STYLE_RECTANGLE:I = 0x1

.field public static final IMAGE_STYLE_SEGMENTATION:I = 0x2

.field protected static final TAG:Ljava/lang/String; = "SmartClipDataRepositoryImpl"


# instance fields
.field protected mAppPackageName:Ljava/lang/String;

.field protected mCapturedImageFilePath:Ljava/lang/String;

.field protected mCapturedImageFileStyle:I

.field protected mContentRect:Landroid/graphics/Rect;

.field protected mContentType:Ljava/lang/String;

.field protected mCropper:Lcom/samsung/android/smartclip/SmartClipDataCropper;

.field private mPenWindowBorder:I

.field protected mRepositoryId:Ljava/lang/String;

.field protected mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

.field private mScaleRect:Landroid/graphics/RectF;

.field protected mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

.field protected mTargetWindowLayer:I

.field private mWinFrameRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 699
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl$1;

    invoke-direct {v0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, v0}, <init>(Lcom/samsung/android/smartclip/SmartClipDataCropper;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/smartclip/SmartClipDataCropper;)V
    .registers 6
    .param p1, "cropper"    # Lcom/samsung/android/smartclip/SmartClipDataCropper;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 141
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v2, v2, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {p0, p1, v0, v1}, <init>(Lcom/samsung/android/smartclip/SmartClipDataCropper;Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/smartclip/SmartClipDataCropper;Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .registers 9
    .param p1, "cropper"    # Lcom/samsung/android/smartclip/SmartClipDataCropper;
    .param p2, "winFrameRect"    # Landroid/graphics/Rect;
    .param p3, "scaleRect"    # Landroid/graphics/RectF;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 146
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v3, v3, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {p0, p1, v0, v1, v2}, <init>(Lcom/samsung/android/smartclip/SmartClipDataCropper;Landroid/graphics/Rect;Landroid/graphics/RectF;I)V

    .line 147
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/smartclip/SmartClipDataCropper;Landroid/graphics/Rect;Landroid/graphics/RectF;I)V
    .registers 7
    .param p1, "cropper"    # Lcom/samsung/android/smartclip/SmartClipDataCropper;
    .param p2, "winFrameRect"    # Landroid/graphics/Rect;
    .param p3, "scaleRect"    # Landroid/graphics/RectF;
    .param p4, "penWindowBorderWidth"    # I

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    invoke-direct {v0}, Lcom/samsung/android/smartclip/SmartClipDataRootElement;-><init>()V

    iput-object v0, p0, mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    .line 101
    iput-object v1, p0, mContentType:Ljava/lang/String;

    .line 104
    iput-object v1, p0, mContentRect:Landroid/graphics/Rect;

    .line 107
    iput-object v1, p0, mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 110
    iput-object v1, p0, mCropper:Lcom/samsung/android/smartclip/SmartClipDataCropper;

    .line 113
    iput-object v1, p0, mCapturedImageFilePath:Ljava/lang/String;

    .line 116
    const/4 v0, 0x1

    iput v0, p0, mCapturedImageFileStyle:I

    .line 119
    iput-object v1, p0, mAppPackageName:Ljava/lang/String;

    .line 122
    const/4 v0, -0x1

    iput v0, p0, mTargetWindowLayer:I

    .line 127
    iput-object v1, p0, mWinFrameRect:Landroid/graphics/Rect;

    .line 128
    iput-object v1, p0, mScaleRect:Landroid/graphics/RectF;

    .line 130
    const/4 v0, 0x0

    iput v0, p0, mPenWindowBorder:I

    .line 151
    iput-object p1, p0, mCropper:Lcom/samsung/android/smartclip/SmartClipDataCropper;

    .line 152
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, mWinFrameRect:Landroid/graphics/Rect;

    .line 153
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, mScaleRect:Landroid/graphics/RectF;

    .line 154
    iput p4, p0, mPenWindowBorder:I

    .line 155
    return-void
.end method

.method public static createRepositoryFromString(Ljava/lang/String;)Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .registers 23
    .param p0, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 722
    new-instance v13, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, <init>(Lcom/samsung/android/smartclip/SmartClipDataCropper;)V

    .line 725
    .local v13, "repository":Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    :try_start_9
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 728
    .local v9, "json_repository":Lorg/json/JSONObject;
    const-string v17, "content_type"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2c

    .line 729
    const-string v17, "content_type"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v13, mContentType:Ljava/lang/String;

    .line 733
    :cond_2c
    const-string/jumbo v17, "repository_id"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4a

    .line 734
    const-string/jumbo v17, "repository_id"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v13, mRepositoryId:Ljava/lang/String;

    .line 738
    :cond_4a
    const-string v17, "content_rect"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8b

    .line 739
    const-string v17, "content_rect"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 740
    .local v8, "json_rect":Lorg/json/JSONArray;
    new-instance v17, Landroid/graphics/Rect;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v21

    invoke-direct/range {v17 .. v21}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v17

    iput-object v0, v13, mContentRect:Landroid/graphics/Rect;

    .line 744
    .end local v8    # "json_rect":Lorg/json/JSONArray;
    :cond_8b
    const-string v17, "captured_image_path"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b0

    .line 745
    const-string v17, "captured_image_path"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 746
    .local v2, "capturedImageFilePath":Ljava/lang/String;
    const-string v17, "captured_image_style"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 747
    .local v3, "capturedImageFileStyle":I
    if-eqz v2, :cond_b0

    .line 748
    invoke-virtual {v13, v2, v3}, setCapturedImage(Ljava/lang/String;I)V

    .line 753
    .end local v2    # "capturedImageFilePath":Ljava/lang/String;
    .end local v3    # "capturedImageFileStyle":I
    :cond_b0
    const-string/jumbo v17, "meta_tags"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_16f

    .line 754
    new-instance v17, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct/range {v17 .. v17}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    move-object/from16 v0, v17

    iput-object v0, v13, mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 756
    const-string/jumbo v17, "meta_tags"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 757
    .local v11, "json_tagArray":Lorg/json/JSONArray;
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v14

    .line 758
    .local v14, "tagCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_d8
    if-ge v7, v14, :cond_16f

    .line 759
    const/4 v12, 0x0

    .line 760
    .local v12, "metaTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    invoke-virtual {v11, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 762
    .local v10, "json_tag":Lorg/json/JSONObject;
    const-string/jumbo v17, "meta_tag_type"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 763
    .local v15, "tagType":Ljava/lang/String;
    const-string v16, ""
    :try_end_ea
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_ea} :catch_14e

    .line 766
    .local v16, "tagValue":Ljava/lang/String;
    :try_start_ea
    const-string/jumbo v17, "meta_tag_value"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_f2
    .catch Lorg/json/JSONException; {:try_start_ea .. :try_end_f2} :catch_132

    move-result-object v16

    .line 772
    :goto_f3
    :try_start_f3
    const-string/jumbo v17, "meta_tag_extra_value"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 773
    .local v6, "extraDataStr":Ljava/lang/String;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v6, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    .line 775
    .local v5, "extraData":[B
    const-string v17, "SmartClipDataRepositoryImpl"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Decoding : Length of extra data = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    array-length v0, v5

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    new-instance v12, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    .end local v12    # "metaTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    move-object/from16 v0, v16

    invoke-direct {v12, v15, v0, v5}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_126
    .catch Lorg/json/JSONException; {:try_start_f3 .. :try_end_126} :catch_170

    .line 782
    .end local v5    # "extraData":[B
    .end local v6    # "extraDataStr":Ljava/lang/String;
    .restart local v12    # "metaTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    :goto_126
    :try_start_126
    iget-object v0, v13, mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    .line 758
    add-int/lit8 v7, v7, 0x1

    goto :goto_d8

    .line 767
    :catch_132
    move-exception v4

    .line 768
    .local v4, "e":Lorg/json/JSONException;
    const-string v17, "SmartClipDataRepositoryImpl"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "There is no meta value! type="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14d
    .catch Lorg/json/JSONException; {:try_start_126 .. :try_end_14d} :catch_14e

    goto :goto_f3

    .line 786
    .end local v4    # "e":Lorg/json/JSONException;
    .end local v7    # "i":I
    .end local v9    # "json_repository":Lorg/json/JSONObject;
    .end local v10    # "json_tag":Lorg/json/JSONObject;
    .end local v11    # "json_tagArray":Lorg/json/JSONArray;
    .end local v12    # "metaTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    .end local v14    # "tagCount":I
    .end local v15    # "tagType":Ljava/lang/String;
    .end local v16    # "tagValue":Ljava/lang/String;
    :catch_14e
    move-exception v4

    .line 787
    .restart local v4    # "e":Lorg/json/JSONException;
    const-string v17, "SmartClipDataRepositoryImpl"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "JSONException throwed : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 789
    const/4 v13, 0x0

    .line 792
    .end local v4    # "e":Lorg/json/JSONException;
    .end local v13    # "repository":Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    :cond_16f
    return-object v13

    .line 779
    .restart local v7    # "i":I
    .restart local v9    # "json_repository":Lorg/json/JSONObject;
    .restart local v10    # "json_tag":Lorg/json/JSONObject;
    .restart local v11    # "json_tagArray":Lorg/json/JSONArray;
    .restart local v13    # "repository":Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .restart local v14    # "tagCount":I
    .restart local v15    # "tagType":Ljava/lang/String;
    .restart local v16    # "tagValue":Ljava/lang/String;
    :catch_170
    move-exception v4

    .line 780
    .restart local v4    # "e":Lorg/json/JSONException;
    :try_start_171
    new-instance v12, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    move-object/from16 v0, v16

    invoke-direct {v12, v15, v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_178
    .catch Lorg/json/JSONException; {:try_start_171 .. :try_end_178} :catch_14e

    .restart local v12    # "metaTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    goto :goto_126
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 634
    const/4 v0, 0x0

    return v0
.end method

.method public determineContentType()Z
    .registers 16

    .prologue
    .line 229
    const/4 v6, 0x0

    .line 230
    .local v6, "contentType":Ljava/lang/String;
    const/4 v1, 0x0

    .line 231
    .local v1, "bHaveBrowserView":Z
    const/4 v5, 0x0

    .line 232
    .local v5, "bHaveYoutubeView":Z
    const/4 v0, 0x0

    .line 233
    .local v0, "bHaveAudioFilePath":Z
    const/4 v4, 0x0

    .line 234
    .local v4, "bHaveVideoFilePath":Z
    const/4 v2, 0x0

    .line 235
    .local v2, "bHaveImageFilePath":Z
    iget-object v7, p0, mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    .line 237
    .local v7, "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :goto_8
    if-eqz v7, :cond_f2

    .line 238
    invoke-virtual {v7}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getView()Landroid/view/View;

    move-result-object v12

    .line 240
    .local v12, "view":Landroid/view/View;
    if-eqz v12, :cond_c9

    .line 241
    const/4 v3, 0x0

    .line 242
    .local v3, "bHaveUrlTag":Z
    const-string/jumbo v13, "url"

    invoke-virtual {p0, v13}, getMetaTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v11

    .line 243
    .local v11, "urlMetaArray":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    invoke-virtual {v11}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_1c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_35

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .line 244
    .local v10, "urlMeta":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    invoke-virtual {v10}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 245
    .local v9, "url":Ljava/lang/String;
    if-eqz v9, :cond_1c

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1c

    .line 246
    const/4 v3, 0x1

    .line 251
    .end local v9    # "url":Ljava/lang/String;
    .end local v10    # "urlMeta":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    :cond_35
    const-string v13, "file_path_audio"

    invoke-virtual {p0, v13}, getMetaTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;->size()I

    move-result v13

    if-lez v13, :cond_42

    .line 252
    const/4 v0, 0x1

    .line 255
    :cond_42
    const-string v13, "file_path_video"

    invoke-virtual {p0, v13}, getMetaTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;->size()I

    move-result v13

    if-lez v13, :cond_4f

    .line 256
    const/4 v4, 0x1

    .line 259
    :cond_4f
    const-string v13, "file_path_image"

    invoke-virtual {p0, v13}, getMetaTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;->size()I

    move-result v13

    if-lez v13, :cond_5c

    .line 260
    const/4 v2, 0x1

    .line 263
    :cond_5c
    const/4 v13, 0x1

    if-ne v3, v13, :cond_bc

    .line 264
    instance-of v13, v12, Landroid/webkit/WebView;

    if-nez v13, :cond_bb

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "android.webkitsec.WebView"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_bb

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "org.chromium.content.browser.ChromeView"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_bb

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "org.samsung.content.sbrowser.SbrContentView"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_bb

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "com.sec.chromium.content.browser.SbrContentView"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_bb

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "org.chromium.content.browser.JellyBeanContentView"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_d1

    .line 270
    :cond_bb
    const/4 v1, 0x1

    .line 279
    :cond_bc
    :goto_bc
    const-string v13, "html"

    invoke-virtual {p0, v13}, getMetaTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;->size()I

    move-result v13

    if-lez v13, :cond_c9

    .line 280
    const/4 v1, 0x1

    .line 285
    .end local v3    # "bHaveUrlTag":Z
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "urlMetaArray":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    :cond_c9
    iget-object v13, p0, mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    invoke-virtual {v7, v13}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v7

    .line 286
    goto/16 :goto_8

    .line 271
    .restart local v3    # "bHaveUrlTag":Z
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v11    # "urlMetaArray":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    :cond_d1
    iget-object v13, p0, mAppPackageName:Ljava/lang/String;

    if-eqz v13, :cond_bc

    iget-object v13, p0, mAppPackageName:Ljava/lang/String;

    const-string v14, "com.google.android.youtube"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_bc

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "PlayerView"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_bc

    .line 273
    const/4 v5, 0x1

    goto :goto_bc

    .line 288
    .end local v3    # "bHaveUrlTag":Z
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "urlMetaArray":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    .end local v12    # "view":Landroid/view/View;
    :cond_f2
    const/4 v13, 0x1

    if-ne v0, v13, :cond_fc

    .line 289
    const-string/jumbo v6, "music"

    .line 302
    :goto_f8
    iput-object v6, p0, mContentType:Ljava/lang/String;

    .line 304
    const/4 v13, 0x1

    return v13

    .line 290
    :cond_fc
    const/4 v13, 0x1

    if-ne v4, v13, :cond_103

    .line 291
    const-string/jumbo v6, "video"

    goto :goto_f8

    .line 292
    :cond_103
    const/4 v13, 0x1

    if-ne v2, v13, :cond_109

    .line 293
    const-string v6, "image"

    goto :goto_f8

    .line 294
    :cond_109
    const/4 v13, 0x1

    if-ne v5, v13, :cond_110

    .line 295
    const-string/jumbo v6, "youtube"

    goto :goto_f8

    .line 296
    :cond_110
    const/4 v13, 0x1

    if-ne v1, v13, :cond_117

    .line 297
    const-string/jumbo v6, "web"

    goto :goto_f8

    .line 299
    :cond_117
    const-string v6, "image"

    goto :goto_f8
.end method

.method public dump(Z)Z
    .registers 6
    .param p1, "dumpMetaTags"    # Z

    .prologue
    const/4 v3, 0x1

    .line 601
    const-string v0, "SmartClipDataRepositoryImpl"

    const-string v1, "----- Start of SmartClip repository informations -----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const-string v0, "SmartClipDataRepositoryImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "** Content type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const-string v0, "SmartClipDataRepositoryImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "** Meta area rect : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, getContentRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const-string v0, "SmartClipDataRepositoryImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "** Captured image file path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mCapturedImageFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    if-ne p1, v3, :cond_80

    .line 610
    const-string v0, "SmartClipDataRepositoryImpl"

    const-string v1, "** mTags"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v0, p0, mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-eqz v0, :cond_88

    .line 612
    iget-object v0, p0, mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->dump()V

    .line 618
    :goto_70
    const-string v0, "SmartClipDataRepositoryImpl"

    const-string v1, "** Element tree **"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object v0, p0, mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    if-eqz v0, :cond_80

    .line 620
    iget-object v0, p0, mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataRootElement;->dump()Z

    .line 624
    :cond_80
    const-string v0, "SmartClipDataRepositoryImpl"

    const-string v1, "----- End of SmartClip repository informations -----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    return v3

    .line 614
    :cond_88
    const-string v0, "SmartClipDataRepositoryImpl"

    const-string/jumbo v1, "mTags is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70
.end method

.method public encodeRepositoryToString()Ljava/lang/String;
    .registers 18

    .prologue
    .line 803
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 806
    .local v10, "json_repository":Lorg/json/JSONObject;
    invoke-virtual/range {p0 .. p0}, getContentType()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_14

    .line 807
    const-string v14, "content_type"

    invoke-virtual/range {p0 .. p0}, getContentType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 811
    :cond_14
    invoke-virtual/range {p0 .. p0}, getRepositoryId()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_24

    .line 812
    const-string/jumbo v14, "repository_id"

    invoke-virtual/range {p0 .. p0}, getRepositoryId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 816
    :cond_24
    invoke-virtual/range {p0 .. p0}, getContentRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 817
    .local v3, "contentRect":Landroid/graphics/Rect;
    if-eqz v3, :cond_4c

    .line 818
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 820
    .local v9, "json_rect":Lorg/json/JSONArray;
    const/4 v14, 0x0

    iget v15, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v9, v14, v15}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    .line 821
    const/4 v14, 0x1

    iget v15, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v14, v15}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    .line 822
    const/4 v14, 0x2

    iget v15, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9, v14, v15}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    .line 823
    const/4 v14, 0x3

    iget v15, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v14, v15}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    .line 825
    const-string v14, "content_rect"

    invoke-virtual {v10, v14, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 829
    .end local v9    # "json_rect":Lorg/json/JSONArray;
    :cond_4c
    invoke-virtual/range {p0 .. p0}, getCapturedImageFilePath()Ljava/lang/String;

    move-result-object v1

    .line 830
    .local v1, "capturedImageFilePath":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, getCapturedImageFileStyle()I

    move-result v2

    .line 831
    .local v2, "capturedImageFileStyle":I
    if-eqz v1, :cond_60

    .line 832
    const-string v14, "captured_image_path"

    invoke-virtual {v10, v14, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 833
    const-string v14, "captured_image_style"

    invoke-virtual {v10, v14, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 837
    :cond_60
    invoke-virtual/range {p0 .. p0}, getAllMetaTagList()Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    move-result-object v13

    .line 838
    .local v13, "tagArray":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    if-eqz v13, :cond_101

    .line 839
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 841
    .local v12, "json_tagArray":Lorg/json/JSONArray;
    invoke-virtual {v13}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_6f
    :goto_6f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_f5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .line 842
    .local v4, "curTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    if-eqz v4, :cond_6f

    .line 843
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 844
    .local v11, "json_tag":Lorg/json/JSONObject;
    const-string/jumbo v14, "meta_tag_type"

    invoke-virtual {v4}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 845
    const-string/jumbo v14, "meta_tag_value"

    invoke-virtual {v4}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 846
    instance-of v14, v4, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    if-eqz v14, :cond_ce

    .line 847
    move-object v0, v4

    check-cast v0, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    move-object v5, v0

    .line 848
    .local v5, "curTagImpl":Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;
    invoke-virtual {v5}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->getExtraData()[B

    move-result-object v14

    if-eqz v14, :cond_ce

    .line 849
    invoke-virtual {v5}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->getExtraData()[B

    move-result-object v7

    .line 850
    .local v7, "extraData":[B
    const-string v14, "SmartClipDataRepositoryImpl"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Encoding : Length of extra data = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    array-length v0, v7

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    const-string/jumbo v14, "meta_tag_extra_value"

    const/4 v15, 0x0

    invoke-static {v7, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 854
    .end local v5    # "curTagImpl":Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;
    .end local v7    # "extraData":[B
    :cond_ce
    invoke-virtual {v12, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_d1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_d1} :catch_d2

    goto :goto_6f

    .line 864
    .end local v1    # "capturedImageFilePath":Ljava/lang/String;
    .end local v2    # "capturedImageFileStyle":I
    .end local v3    # "contentRect":Landroid/graphics/Rect;
    .end local v4    # "curTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "json_repository":Lorg/json/JSONObject;
    .end local v11    # "json_tag":Lorg/json/JSONObject;
    .end local v12    # "json_tagArray":Lorg/json/JSONArray;
    .end local v13    # "tagArray":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    :catch_d2
    move-exception v6

    .line 865
    .local v6, "e":Lorg/json/JSONException;
    const-string v14, "SmartClipDataRepositoryImpl"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "JSONException throwed : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 867
    const-string v14, ""

    .end local v6    # "e":Lorg/json/JSONException;
    :goto_f4
    return-object v14

    .line 858
    .restart local v1    # "capturedImageFilePath":Ljava/lang/String;
    .restart local v2    # "capturedImageFileStyle":I
    .restart local v3    # "contentRect":Landroid/graphics/Rect;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v10    # "json_repository":Lorg/json/JSONObject;
    .restart local v12    # "json_tagArray":Lorg/json/JSONArray;
    .restart local v13    # "tagArray":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    :cond_f5
    :try_start_f5
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lez v14, :cond_101

    .line 859
    const-string/jumbo v14, "meta_tags"

    invoke-virtual {v10, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 863
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v12    # "json_tagArray":Lorg/json/JSONArray;
    :cond_101
    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;
    :try_end_105
    .catch Lorg/json/JSONException; {:try_start_f5 .. :try_end_105} :catch_d2

    move-result-object v14

    goto :goto_f4
.end method

.method public extractMetaTagFromString(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "srcString"    # Ljava/lang/String;

    .prologue
    .line 597
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllMetaTag()Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    .registers 2

    .prologue
    .line 538
    invoke-virtual {p0}, getAllMetaTagList()Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    move-result-object v0

    .line 539
    .local v0, "arrayList":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    return-object v0
.end method

.method public getAllMetaTagList()Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    .registers 10

    .prologue
    .line 496
    iget-object v7, p0, mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-eqz v7, :cond_7

    .line 497
    iget-object v3, p0, mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 525
    :cond_6
    :goto_6
    return-object v3

    .line 499
    :cond_7
    new-instance v3, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v3}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    .line 501
    .local v3, "metaList":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    iget-object v1, p0, mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    .line 503
    .local v1, "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :goto_e
    if-eqz v1, :cond_3e

    .line 504
    invoke-virtual {v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getTagTable()Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 505
    .local v6, "tags":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    if-eqz v6, :cond_38

    .line 506
    invoke-virtual {v6}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->size()I

    move-result v5

    .line 507
    .local v5, "tagCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    if-ge v2, v5, :cond_38

    .line 508
    invoke-virtual {v6, v2}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .line 510
    .local v0, "curTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "plain_text"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_35

    .line 511
    invoke-virtual {v3, v0}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->add(Ljava/lang/Object;)Z

    .line 507
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 516
    .end local v0    # "curTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    .end local v2    # "i":I
    .end local v5    # "tagCount":I
    :cond_38
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    .line 517
    goto :goto_e

    .line 520
    .end local v6    # "tags":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    :cond_3e
    invoke-virtual {p0}, getMergedPlainTextTag()Ljava/lang/String;

    move-result-object v4

    .line 521
    .local v4, "plainText":Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 522
    new-instance v7, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    const-string/jumbo v8, "plain_text"

    invoke-direct {v7, v8, v4}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method public getAppPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, mAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getCapturedImageFilePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, mCapturedImageFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getCapturedImageFileStyle()I
    .registers 2

    .prologue
    .line 183
    iget v0, p0, mCapturedImageFileStyle:I

    return v0
.end method

.method public getContentRect()Landroid/graphics/Rect;
    .registers 14

    .prologue
    .line 396
    iget-object v9, p0, mContentRect:Landroid/graphics/Rect;

    if-eqz v9, :cond_7

    .line 397
    iget-object v2, p0, mContentRect:Landroid/graphics/Rect;

    .line 487
    :cond_6
    :goto_6
    return-object v2

    .line 399
    :cond_7
    iget-object v4, p0, mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    .line 400
    .local v4, "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    new-instance v2, Landroid/graphics/Rect;

    const v9, 0x1869f

    const v10, 0x1869f

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v2, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 402
    .local v2, "contentRect":Landroid/graphics/Rect;
    :goto_16
    if-eqz v4, :cond_c5

    .line 403
    invoke-virtual {v4}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getChildCount()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_bd

    .line 404
    invoke-virtual {v4}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getChildCount()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_77

    .line 405
    invoke-virtual {v4}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getFirstChild()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    .line 406
    .local v0, "child":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :goto_2a
    if-eqz v0, :cond_bd

    .line 408
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getMetaAreaRect()Landroid/graphics/Rect;

    move-result-object v6

    .line 409
    .local v6, "rect":Landroid/graphics/Rect;
    if-eqz v6, :cond_72

    .line 410
    iget v9, v2, Landroid/graphics/Rect;->left:I

    iget v10, v6, Landroid/graphics/Rect;->left:I

    if-le v9, v10, :cond_42

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-lez v9, :cond_42

    .line 411
    iget v9, v6, Landroid/graphics/Rect;->left:I

    iput v9, v2, Landroid/graphics/Rect;->left:I

    .line 413
    :cond_42
    iget v9, v2, Landroid/graphics/Rect;->top:I

    iget v10, v6, Landroid/graphics/Rect;->top:I

    if-le v9, v10, :cond_52

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-lez v9, :cond_52

    .line 414
    iget v9, v6, Landroid/graphics/Rect;->top:I

    iput v9, v2, Landroid/graphics/Rect;->top:I

    .line 416
    :cond_52
    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v10, v6, Landroid/graphics/Rect;->right:I

    if-ge v9, v10, :cond_62

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-lez v9, :cond_62

    .line 417
    iget v9, v6, Landroid/graphics/Rect;->right:I

    iput v9, v2, Landroid/graphics/Rect;->right:I

    .line 419
    :cond_62
    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    if-ge v9, v10, :cond_72

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-lez v9, :cond_72

    .line 420
    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    iput v9, v2, Landroid/graphics/Rect;->bottom:I

    .line 424
    :cond_72
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    .line 425
    goto :goto_2a

    .line 427
    .end local v0    # "child":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .end local v6    # "rect":Landroid/graphics/Rect;
    :cond_77
    invoke-virtual {v4}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getMetaAreaRect()Landroid/graphics/Rect;

    move-result-object v6

    .line 428
    .restart local v6    # "rect":Landroid/graphics/Rect;
    if-eqz v6, :cond_bd

    .line 429
    iget v9, v2, Landroid/graphics/Rect;->left:I

    iget v10, v6, Landroid/graphics/Rect;->left:I

    if-le v9, v10, :cond_8d

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-lez v9, :cond_8d

    .line 430
    iget v9, v6, Landroid/graphics/Rect;->left:I

    iput v9, v2, Landroid/graphics/Rect;->left:I

    .line 432
    :cond_8d
    iget v9, v2, Landroid/graphics/Rect;->top:I

    iget v10, v6, Landroid/graphics/Rect;->top:I

    if-le v9, v10, :cond_9d

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-lez v9, :cond_9d

    .line 433
    iget v9, v6, Landroid/graphics/Rect;->top:I

    iput v9, v2, Landroid/graphics/Rect;->top:I

    .line 435
    :cond_9d
    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v10, v6, Landroid/graphics/Rect;->right:I

    if-ge v9, v10, :cond_ad

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-lez v9, :cond_ad

    .line 436
    iget v9, v6, Landroid/graphics/Rect;->right:I

    iput v9, v2, Landroid/graphics/Rect;->right:I

    .line 438
    :cond_ad
    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    if-ge v9, v10, :cond_bd

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-lez v9, :cond_bd

    .line 439
    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    iput v9, v2, Landroid/graphics/Rect;->bottom:I

    .line 445
    .end local v6    # "rect":Landroid/graphics/Rect;
    :cond_bd
    iget-object v9, p0, mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    invoke-virtual {v4, v9}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v4

    goto/16 :goto_16

    .line 448
    :cond_c5
    iget v9, v2, Landroid/graphics/Rect;->left:I

    iget v10, v2, Landroid/graphics/Rect;->right:I

    if-le v9, v10, :cond_d2

    .line 449
    new-instance v2, Landroid/graphics/Rect;

    .end local v2    # "contentRect":Landroid/graphics/Rect;
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    goto/16 :goto_6

    .line 452
    .restart local v2    # "contentRect":Landroid/graphics/Rect;
    :cond_d2
    iget-object v9, p0, mScaleRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_ea

    iget-object v9, p0, mScaleRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_6

    .line 453
    :cond_ea
    iget-object v9, p0, mScaleRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v5

    .line 454
    .local v5, "hScale":F
    iget-object v9, p0, mScaleRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v8

    .line 455
    .local v8, "vScale":F
    const/4 v9, 0x0

    cmpl-float v9, v5, v9

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    cmpl-float v9, v8, v9

    if-eqz v9, :cond_6

    .line 456
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 457
    .local v7, "unScaledWinFrame":Landroid/graphics/Rect;
    iget-object v9, p0, mWinFrameRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iput v9, v7, Landroid/graphics/Rect;->left:I

    .line 458
    iget-object v9, p0, mWinFrameRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iput v9, v7, Landroid/graphics/Rect;->top:I

    .line 459
    iget-object v9, p0, mWinFrameRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget-object v10, p0, mWinFrameRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v5

    add-float/2addr v9, v10

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v7, Landroid/graphics/Rect;->right:I

    .line 460
    iget-object v9, p0, mWinFrameRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    iget-object v10, p0, mWinFrameRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v8

    add-float/2addr v9, v10

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v7, Landroid/graphics/Rect;->bottom:I

    .line 462
    iget v9, p0, mPenWindowBorder:I

    if-lez v9, :cond_17b

    .line 463
    iget v9, v2, Landroid/graphics/Rect;->left:I

    iget v10, p0, mPenWindowBorder:I

    if-ge v9, v10, :cond_14a

    .line 464
    iget v9, v2, Landroid/graphics/Rect;->left:I

    iget v10, p0, mPenWindowBorder:I

    add-int/2addr v9, v10

    iput v9, v2, Landroid/graphics/Rect;->left:I

    .line 466
    :cond_14a
    iget v9, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget v11, p0, mPenWindowBorder:I

    sub-int/2addr v10, v11

    if-le v9, v10, :cond_15c

    .line 467
    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v10, p0, mPenWindowBorder:I

    sub-int/2addr v9, v10

    iput v9, v2, Landroid/graphics/Rect;->right:I

    .line 469
    :cond_15c
    iget v9, v2, Landroid/graphics/Rect;->top:I

    iget v10, p0, mPenWindowBorder:I

    if-ge v9, v10, :cond_169

    .line 470
    iget v9, v2, Landroid/graphics/Rect;->top:I

    iget v10, p0, mPenWindowBorder:I

    add-int/2addr v9, v10

    iput v9, v2, Landroid/graphics/Rect;->top:I

    .line 472
    :cond_169
    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v10

    iget v11, p0, mPenWindowBorder:I

    sub-int/2addr v10, v11

    if-le v9, v10, :cond_17b

    .line 473
    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    iget v10, p0, mPenWindowBorder:I

    sub-int/2addr v9, v10

    iput v9, v2, Landroid/graphics/Rect;->bottom:I

    .line 477
    :cond_17b
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 478
    .local v3, "contentWidth":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 480
    .local v1, "contentHeight":I
    iget v9, v7, Landroid/graphics/Rect;->left:I

    iget v10, v2, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    mul-float/2addr v10, v5

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v2, Landroid/graphics/Rect;->left:I

    .line 481
    iget v9, v7, Landroid/graphics/Rect;->top:I

    iget v10, v2, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    mul-float/2addr v10, v8

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v2, Landroid/graphics/Rect;->top:I

    .line 482
    iget v9, v2, Landroid/graphics/Rect;->left:I

    int-to-float v10, v3

    mul-float/2addr v10, v5

    const/high16 v11, 0x3f000000    # 0.5f

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v2, Landroid/graphics/Rect;->right:I

    .line 483
    iget v9, v2, Landroid/graphics/Rect;->top:I

    int-to-float v10, v1

    mul-float/2addr v10, v8

    const/high16 v11, 0x3f000000    # 0.5f

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v2, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_6
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getMergedPlainTextTag()Ljava/lang/String;
    .registers 3

    .prologue
    .line 381
    iget-object v1, p0, mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    if-nez v1, :cond_6

    .line 382
    const/4 v0, 0x0

    .line 386
    :goto_5
    return-object v0

    .line 384
    :cond_6
    iget-object v1, p0, mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    invoke-virtual {v1}, Lcom/samsung/android/smartclip/SmartClipDataRootElement;->collectPlainTextTag()Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "mergedText":Ljava/lang/String;
    goto :goto_5
.end method

.method public getMetaTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    .registers 11
    .param p1, "tagType"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 552
    new-instance v3, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v3}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    .line 554
    .local v3, "metaList":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    iget-object v7, p0, mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-eqz v7, :cond_31

    .line 555
    iget-object v7, p0, mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v7}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->size()I

    move-result v5

    .line 556
    .local v5, "tagCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v5, :cond_4b

    .line 557
    iget-object v7, p0, mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v7, v2}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v8, :cond_2e

    .line 558
    iget-object v7, p0, mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v7, v2}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->add(Ljava/lang/Object;)Z

    .line 556
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 562
    .end local v2    # "i":I
    .end local v5    # "tagCount":I
    :cond_31
    const-string/jumbo v7, "plain_text"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v8, :cond_4c

    .line 564
    invoke-virtual {p0}, getMergedPlainTextTag()Ljava/lang/String;

    move-result-object v4

    .line 565
    .local v4, "plainText":Ljava/lang/String;
    if-eqz v4, :cond_4b

    .line 566
    new-instance v7, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    const-string/jumbo v8, "plain_text"

    invoke-direct {v7, v8, v4}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->add(Ljava/lang/Object;)Z

    .line 590
    .end local v4    # "plainText":Ljava/lang/String;
    :cond_4b
    return-object v3

    .line 569
    :cond_4c
    iget-object v1, p0, mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    .line 571
    .local v1, "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :goto_4e
    if-eqz v1, :cond_4b

    .line 572
    invoke-virtual {v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getTagTable()Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 574
    .local v6, "tags":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    if-eqz v6, :cond_7b

    .line 575
    invoke-virtual {v6}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->size()I

    move-result v5

    .line 576
    .restart local v5    # "tagCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5d
    if-ge v2, v5, :cond_7b

    .line 577
    invoke-virtual {v6, v2}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .line 579
    .local v0, "curTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_78

    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v8, :cond_78

    .line 580
    invoke-virtual {v3, v0}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->add(Ljava/lang/Object;)Z

    .line 576
    :cond_78
    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    .line 585
    .end local v0    # "curTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    .end local v2    # "i":I
    .end local v5    # "tagCount":I
    :cond_7b
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    .line 586
    goto :goto_4e
.end method

.method public getRepositoryId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 355
    iget-object v0, p0, mRepositoryId:Ljava/lang/String;

    return-object v0
.end method

.method public getRootElement()Lcom/samsung/android/smartclip/SmartClipDataRootElement;
    .registers 2

    .prologue
    .line 312
    iget-object v0, p0, mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    return-object v0
.end method

.method public getSmartClipDataCropper()Lcom/samsung/android/smartclip/SmartClipDataCropper;
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, mCropper:Lcom/samsung/android/smartclip/SmartClipDataCropper;

    return-object v0
.end method

.method public getTopmostElement()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    return-object v0
.end method

.method public getWindowLayer()I
    .registers 2

    .prologue
    .line 369
    iget v0, p0, mTargetWindowLayer:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 672
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mContentType:Ljava/lang/String;

    .line 675
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mRepositoryId:Ljava/lang/String;

    .line 678
    const-class v1, Landroid/graphics/Rect;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, mContentRect:Landroid/graphics/Rect;

    .line 681
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mCapturedImageFilePath:Ljava/lang/String;

    .line 684
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, mCapturedImageFileStyle:I

    .line 687
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mAppPackageName:Ljava/lang/String;

    .line 690
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, mTargetWindowLayer:I

    .line 693
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v0}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    .line 694
    .local v0, "listArray":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    const-class v1, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    .end local v0    # "listArray":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    check-cast v0, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 695
    .restart local v0    # "listArray":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    iput-object v0, p0, mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 696
    return-void
.end method

.method public setAppPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 224
    iput-object p1, p0, mAppPackageName:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setCapturedImage(Ljava/lang/String;)V
    .registers 3
    .param p1, "capturedImageFilePath"    # Ljava/lang/String;

    .prologue
    .line 201
    iput-object p1, p0, mCapturedImageFilePath:Ljava/lang/String;

    .line 202
    const/4 v0, 0x1

    iput v0, p0, mCapturedImageFileStyle:I

    .line 203
    return-void
.end method

.method public setCapturedImage(Ljava/lang/String;I)V
    .registers 3
    .param p1, "capturedImageFilePath"    # Ljava/lang/String;
    .param p2, "imageStyle"    # I

    .prologue
    .line 212
    iput-object p1, p0, mCapturedImageFilePath:Ljava/lang/String;

    .line 213
    iput p2, p0, mCapturedImageFileStyle:I

    .line 214
    return-void
.end method

.method public setCapturedImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "capturedImageFilePath"    # Ljava/lang/String;
    .param p2, "capturedImageBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 219
    invoke-virtual {p0, p1}, setCapturedImage(Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .registers 2
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 346
    iput-object p1, p0, mContentType:Ljava/lang/String;

    .line 347
    return-void
.end method

.method public setRepositoryId(Ljava/lang/String;)V
    .registers 2
    .param p1, "repositoryId"    # Ljava/lang/String;

    .prologue
    .line 364
    iput-object p1, p0, mRepositoryId:Ljava/lang/String;

    .line 365
    return-void
.end method

.method public setWindowLayer(I)V
    .registers 2
    .param p1, "layer"    # I

    .prologue
    .line 374
    iput p1, p0, mTargetWindowLayer:I

    .line 375
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 640
    iget-object v0, p0, mContentType:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 641
    invoke-virtual {p0}, determineContentType()Z

    .line 643
    :cond_7
    iget-object v0, p0, mContentType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 646
    iget-object v0, p0, mRepositoryId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 649
    invoke-virtual {p0}, getContentRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, mContentRect:Landroid/graphics/Rect;

    .line 650
    iget-object v0, p0, mContentRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 653
    iget-object v0, p0, mCapturedImageFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 656
    iget v0, p0, mCapturedImageFileStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 659
    iget-object v0, p0, mAppPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 662
    iget v0, p0, mTargetWindowLayer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 665
    invoke-virtual {p0}, getAllMetaTagList()Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    move-result-object v0

    iput-object v0, p0, mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 666
    iget-object v0, p0, mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 667
    return-void
.end method
