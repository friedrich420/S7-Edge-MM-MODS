.class Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;
.super Landroid/os/AsyncTask;
.source "KeyguardEffectViewLayered.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->updateWallpaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;


# direct methods
.method constructor <init>(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 176
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 180
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v2, "layerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;>;"
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    .line 185
    .local v4, "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 187
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    iget-object v7, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$000(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/keyguard/effect/Utils;->getLayeredWallpaperColorCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "colorCode":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 189
    const-string v7, "KeyguardEffectViewLayered"

    const-string v8, "Parsed colorCode cannot be null. effect type must be changing..."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .end local v0    # "colorCode":Ljava/lang/String;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :goto_0
    return-object v6

    .line 192
    .restart local v0    # "colorCode":Ljava/lang/String;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_0
    iget-object v7, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    invoke-virtual {v7}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "layout"

    iget-object v9, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$000(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v0, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 193
    .local v5, "xml":I
    const-string v7, "KeyguardEffectViewLayered"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "color code("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    if-nez v5, :cond_1

    .line 195
    const-string v7, "KeyguardEffectViewLayered"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ERROR - chosen color code("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") resource is not exist !!!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v7, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    invoke-virtual {v7}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$000(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/keyguard/effect/Utils;->getColorCodeFromFeature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "layout"

    iget-object v10, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$000(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 199
    :cond_1
    iget-object v7, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mLastParsedXml:I
    invoke-static {v7}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$100(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)I

    move-result v7

    if-ne v5, v7, :cond_2

    .line 200
    const-string v7, "KeyguardEffectViewLayered"

    const-string v8, "XML already parsed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 208
    .end local v0    # "colorCode":Ljava/lang/String;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "xml":I
    :catch_0
    move-exception v1

    .line 209
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v2, 0x0

    .line 210
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :goto_1
    move-object v6, v2

    .line 218
    goto/16 :goto_0

    .line 203
    .restart local v0    # "colorCode":Ljava/lang/String;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v5    # "xml":I
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    invoke-virtual {v6}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->cleanUp()V

    .line 205
    iget-object v6, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    # setter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mLastParsedXml:I
    invoke-static {v6, v5}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$102(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;I)I

    .line 206
    iget-object v6, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    invoke-virtual {v6}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 207
    iget-object v6, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->parseXML(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;
    invoke-static {v6, v3}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$200(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    goto :goto_1

    .line 211
    .end local v0    # "colorCode":Ljava/lang/String;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "xml":I
    :catch_1
    move-exception v1

    .line 212
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const/4 v2, 0x0

    .line 213
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_1

    .line 214
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v1

    .line 215
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    .line 216
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 176
    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "layerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 225
    :cond_0
    const-string v3, "KeyguardEffectViewLayered"

    const-string v4, "PARSE FAILED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_1
    return-void

    .line 229
    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    # setter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;
    invoke-static {v3, p1}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$302(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 233
    const-string v3, "KeyguardEffectViewLayered"

    const-string v4, "PARSE FINISH - BITMAP LOAD START"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$300(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 237
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 238
    new-instance v0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1$1;-><init>(Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;)V

    .line 542
    .local v0, "bitmapLoaderTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;Ljava/lang/Void;Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;>;"
    const/4 v3, 0x1

    new-array v4, v3, [Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$1;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewLayered;

    # getter for: Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->mBitmapImageList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/keyguard/effect/KeyguardEffectViewLayered;->access$300(Lcom/android/keyguard/effect/KeyguardEffectViewLayered;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/effect/KeyguardEffectViewLayered$BitmapImage;

    aput-object v3, v4, v5

    invoke-virtual {v0, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
