.class Lcom/android/systemui/qs/tiles/IntentTile$BytesIcon;
.super Lcom/android/systemui/qs/QSTile$Icon;
.source "IntentTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/IntentTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BytesIcon"
.end annotation


# instance fields
.field private final mBytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTile$Icon;-><init>()V

    .line 173
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/IntentTile$BytesIcon;->mBytes:[B

    .line 174
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 184
    instance-of v0, p1, Lcom/android/systemui/qs/tiles/IntentTile$BytesIcon;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/qs/tiles/IntentTile$BytesIcon;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/android/systemui/qs/tiles/IntentTile$BytesIcon;->mBytes:[B

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/IntentTile$BytesIcon;->mBytes:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 178
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/IntentTile$BytesIcon;->mBytes:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/IntentTile$BytesIcon;->mBytes:[B

    array-length v3, v3

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 179
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 189
    const-string v0, "BytesIcon[len=%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/IntentTile$BytesIcon;->mBytes:[B

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
