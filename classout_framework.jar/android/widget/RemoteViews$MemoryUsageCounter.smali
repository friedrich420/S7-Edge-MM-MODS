.class Landroid/widget/RemoteViews$MemoryUsageCounter;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MemoryUsageCounter"
.end annotation


# instance fields
.field mMemoryUsage:I

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method private constructor <init>(Landroid/widget/RemoteViews;)V
    .registers 2

    .prologue
    .line 2137
    iput-object p1, p0, this$0:Landroid/widget/RemoteViews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/RemoteViews;
    .param p2, "x1"    # Landroid/widget/RemoteViews$1;

    .prologue
    .line 2137
    invoke-direct {p0, p1}, <init>(Landroid/widget/RemoteViews;)V

    return-void
.end method


# virtual methods
.method public addBitmapMemory(Landroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2152
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    .line 2154
    .local v1, "c":Landroid/graphics/Bitmap$Config;
    const/4 v0, 0x4

    .line 2155
    .local v0, "bpp":I
    if-eqz v1, :cond_12

    .line 2156
    sget-object v2, Landroid/widget/RemoteViews$4;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_26

    .line 2169
    :cond_12
    :goto_12
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    mul-int/2addr v2, v0

    invoke-virtual {p0, v2}, increment(I)V

    .line 2170
    return-void

    .line 2158
    :pswitch_20
    const/4 v0, 0x1

    .line 2159
    goto :goto_12

    .line 2162
    :pswitch_22
    const/4 v0, 0x2

    .line 2163
    goto :goto_12

    .line 2165
    :pswitch_24
    const/4 v0, 0x4

    goto :goto_12

    .line 2156
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_20
        :pswitch_22
        :pswitch_22
        :pswitch_24
    .end packed-switch
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 2139
    const/4 v0, 0x0

    iput v0, p0, mMemoryUsage:I

    .line 2140
    return-void
.end method

.method public getMemoryUsage()I
    .registers 2

    .prologue
    .line 2147
    iget v0, p0, mMemoryUsage:I

    return v0
.end method

.method public increment(I)V
    .registers 3
    .param p1, "numBytes"    # I

    .prologue
    .line 2143
    iget v0, p0, mMemoryUsage:I

    add-int/2addr v0, p1

    iput v0, p0, mMemoryUsage:I

    .line 2144
    return-void
.end method
