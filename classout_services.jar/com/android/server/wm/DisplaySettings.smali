.class public Lcom/android/server/wm/DisplaySettings;
.super Ljava/lang/Object;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplaySettings$Entry;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/DisplaySettings$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mFile:Landroid/util/AtomicFile;


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, mEntries:Ljava/util/HashMap;

    .line 60
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 61
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 62
    .local v1, "systemDir":Ljava/io/File;
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "display_settings.xml"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, mFile:Landroid/util/AtomicFile;

    .line 63
    return-void
.end method

.method private getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .registers 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 165
    const/4 v3, 0x0

    :try_start_2
    invoke-interface {p1, v3, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_c

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_b} :catch_d

    move-result v2

    .line 168
    .end local v1    # "str":Ljava/lang/String;
    :cond_c
    :goto_c
    return v2

    .line 167
    :catch_d
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_c
.end method

.method private readDisplay(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    const/4 v2, 0x0

    const-string/jumbo v3, "name"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_38

    .line 176
    new-instance v0, Lcom/android/server/wm/DisplaySettings$Entry;

    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplaySettings$Entry;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, "entry":Lcom/android/server/wm/DisplaySettings$Entry;
    const-string/jumbo v2, "overscanLeft"

    invoke-direct {p0, p1, v2}, getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanLeft:I

    .line 178
    const-string/jumbo v2, "overscanTop"

    invoke-direct {p0, p1, v2}, getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanTop:I

    .line 179
    const-string/jumbo v2, "overscanRight"

    invoke-direct {p0, p1, v2}, getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanRight:I

    .line 180
    const-string/jumbo v2, "overscanBottom"

    invoke-direct {p0, p1, v2}, getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanBottom:I

    .line 181
    iget-object v2, p0, mEntries:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .end local v0    # "entry":Lcom/android/server/wm/DisplaySettings$Entry;
    :cond_38
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 184
    return-void
.end method


# virtual methods
.method public getOverscanLocked(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uniqueId"    # Ljava/lang/String;
    .param p3, "outRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 69
    if-eqz p2, :cond_d

    iget-object v1, p0, mEntries:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplaySettings$Entry;

    .local v0, "entry":Lcom/android/server/wm/DisplaySettings$Entry;
    if-nez v0, :cond_15

    .line 70
    .end local v0    # "entry":Lcom/android/server/wm/DisplaySettings$Entry;
    :cond_d
    iget-object v1, p0, mEntries:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplaySettings$Entry;

    .line 72
    .restart local v0    # "entry":Lcom/android/server/wm/DisplaySettings$Entry;
    :cond_15
    if-eqz v0, :cond_28

    .line 73
    iget v1, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanLeft:I

    iput v1, p3, Landroid/graphics/Rect;->left:I

    .line 74
    iget v1, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanTop:I

    iput v1, p3, Landroid/graphics/Rect;->top:I

    .line 75
    iget v1, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanRight:I

    iput v1, p3, Landroid/graphics/Rect;->right:I

    .line 76
    iget v1, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanBottom:I

    iput v1, p3, Landroid/graphics/Rect;->bottom:I

    .line 80
    :goto_27
    return-void

    .line 78
    :cond_28
    invoke-virtual {p3, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_27
.end method

.method public readSettingsLocked()V
    .registers 13

    .prologue
    const/4 v11, 0x3

    const/4 v8, 0x2

    const/4 v10, 0x1

    .line 103
    :try_start_3
    iget-object v7, p0, mFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_8} :catch_4e

    move-result-object v3

    .line 109
    .local v3, "stream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 111
    .local v4, "success":Z
    :try_start_a
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 112
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 115
    :cond_17
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, "type":I
    if-eq v6, v8, :cond_1f

    if-ne v6, v10, :cond_17

    .line 119
    :cond_1f
    if-eq v6, v8, :cond_74

    .line 120
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "no start tag found"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_2a} :catch_2a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_2a} :catch_9c
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_2a} :catch_e2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_2a} :catch_11a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_2a} :catch_142
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_2a} :catch_16a
    .catchall {:try_start_a .. :try_end_2a} :catchall_192

    .line 140
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    :catch_2a
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_2b
    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed parsing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_2b .. :try_end_43} :catchall_192

    .line 153
    if-nez v4, :cond_4a

    .line 154
    iget-object v7, p0, mEntries:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 157
    :cond_4a
    :try_start_4a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_19e

    .line 161
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .end local v4    # "success":Z
    :goto_4d
    return-void

    .line 104
    :catch_4e
    move-exception v0

    .line 105
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No existing display settings "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, mFile:Landroid/util/AtomicFile;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; starting empty"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 123
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "success":Z
    .restart local v6    # "type":I
    :cond_74
    :try_start_74
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 125
    .local v1, "outerDepth":I
    :cond_78
    :goto_78
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v10, :cond_10a

    if-ne v6, v11, :cond_86

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v1, :cond_10a

    .line 126
    :cond_86
    if-eq v6, v11, :cond_78

    const/4 v7, 0x4

    if-eq v6, v7, :cond_78

    .line 130
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 131
    .local v5, "tagName":Ljava/lang/String;
    const-string/jumbo v7, "display"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c2

    .line 132
    invoke-direct {p0, v2}, readDisplay(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_9b
    .catch Ljava/lang/IllegalStateException; {:try_start_74 .. :try_end_9b} :catch_2a
    .catch Ljava/lang/NullPointerException; {:try_start_74 .. :try_end_9b} :catch_9c
    .catch Ljava/lang/NumberFormatException; {:try_start_74 .. :try_end_9b} :catch_e2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_74 .. :try_end_9b} :catch_11a
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_9b} :catch_142
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_74 .. :try_end_9b} :catch_16a
    .catchall {:try_start_74 .. :try_end_9b} :catchall_192

    goto :goto_78

    .line 142
    .end local v1    # "outerDepth":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "type":I
    :catch_9c
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_9d
    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed parsing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b5
    .catchall {:try_start_9d .. :try_end_b5} :catchall_192

    .line 153
    if-nez v4, :cond_bc

    .line 154
    iget-object v7, p0, mEntries:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 157
    :cond_bc
    :try_start_bc
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_bf} :catch_c0

    goto :goto_4d

    .line 158
    :catch_c0
    move-exception v7

    goto :goto_4d

    .line 134
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "outerDepth":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "tagName":Ljava/lang/String;
    .restart local v6    # "type":I
    :cond_c2
    :try_start_c2
    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown element under <display-settings>: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_e1
    .catch Ljava/lang/IllegalStateException; {:try_start_c2 .. :try_end_e1} :catch_2a
    .catch Ljava/lang/NullPointerException; {:try_start_c2 .. :try_end_e1} :catch_9c
    .catch Ljava/lang/NumberFormatException; {:try_start_c2 .. :try_end_e1} :catch_e2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c2 .. :try_end_e1} :catch_11a
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_e1} :catch_142
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c2 .. :try_end_e1} :catch_16a
    .catchall {:try_start_c2 .. :try_end_e1} :catchall_192

    goto :goto_78

    .line 144
    .end local v1    # "outerDepth":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "type":I
    :catch_e2
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_e3
    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed parsing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fb
    .catchall {:try_start_e3 .. :try_end_fb} :catchall_192

    .line 153
    if-nez v4, :cond_102

    .line 154
    iget-object v7, p0, mEntries:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 157
    :cond_102
    :try_start_102
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_105
    .catch Ljava/io/IOException; {:try_start_102 .. :try_end_105} :catch_107

    goto/16 :goto_4d

    .line 158
    :catch_107
    move-exception v7

    goto/16 :goto_4d

    .line 139
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "outerDepth":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "type":I
    :cond_10a
    const/4 v4, 0x1

    .line 153
    if-nez v4, :cond_112

    .line 154
    iget-object v7, p0, mEntries:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 157
    :cond_112
    :try_start_112
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_115
    .catch Ljava/io/IOException; {:try_start_112 .. :try_end_115} :catch_117

    goto/16 :goto_4d

    .line 158
    :catch_117
    move-exception v7

    goto/16 :goto_4d

    .line 146
    .end local v1    # "outerDepth":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    :catch_11a
    move-exception v0

    .line 147
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_11b
    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed parsing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_133
    .catchall {:try_start_11b .. :try_end_133} :catchall_192

    .line 153
    if-nez v4, :cond_13a

    .line 154
    iget-object v7, p0, mEntries:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 157
    :cond_13a
    :try_start_13a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_13d
    .catch Ljava/io/IOException; {:try_start_13a .. :try_end_13d} :catch_13f

    goto/16 :goto_4d

    .line 158
    :catch_13f
    move-exception v7

    goto/16 :goto_4d

    .line 148
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_142
    move-exception v0

    .line 149
    .local v0, "e":Ljava/io/IOException;
    :try_start_143
    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed parsing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15b
    .catchall {:try_start_143 .. :try_end_15b} :catchall_192

    .line 153
    if-nez v4, :cond_162

    .line 154
    iget-object v7, p0, mEntries:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 157
    :cond_162
    :try_start_162
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_165
    .catch Ljava/io/IOException; {:try_start_162 .. :try_end_165} :catch_167

    goto/16 :goto_4d

    .line 158
    :catch_167
    move-exception v7

    goto/16 :goto_4d

    .line 150
    .end local v0    # "e":Ljava/io/IOException;
    :catch_16a
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_16b
    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed parsing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_183
    .catchall {:try_start_16b .. :try_end_183} :catchall_192

    .line 153
    if-nez v4, :cond_18a

    .line 154
    iget-object v7, p0, mEntries:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 157
    :cond_18a
    :try_start_18a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_18d
    .catch Ljava/io/IOException; {:try_start_18a .. :try_end_18d} :catch_18f

    goto/16 :goto_4d

    .line 158
    :catch_18f
    move-exception v7

    goto/16 :goto_4d

    .line 153
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catchall_192
    move-exception v7

    if-nez v4, :cond_19a

    .line 154
    iget-object v8, p0, mEntries:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 157
    :cond_19a
    :try_start_19a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_19d
    .catch Ljava/io/IOException; {:try_start_19a .. :try_end_19d} :catch_1a1

    .line 159
    :goto_19d
    throw v7

    .line 158
    .local v0, "e":Ljava/lang/IllegalStateException;
    :catch_19e
    move-exception v7

    goto/16 :goto_4d

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1a1
    move-exception v8

    goto :goto_19d
.end method

.method public setOverscanLocked(Ljava/lang/String;IIII)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 83
    if-nez p2, :cond_e

    if-nez p3, :cond_e

    if-nez p4, :cond_e

    if-nez p5, :cond_e

    .line 86
    iget-object v1, p0, mEntries:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :goto_d
    return-void

    .line 89
    :cond_e
    iget-object v1, p0, mEntries:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplaySettings$Entry;

    .line 90
    .local v0, "entry":Lcom/android/server/wm/DisplaySettings$Entry;
    if-nez v0, :cond_22

    .line 91
    new-instance v0, Lcom/android/server/wm/DisplaySettings$Entry;

    .end local v0    # "entry":Lcom/android/server/wm/DisplaySettings$Entry;
    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplaySettings$Entry;-><init>(Ljava/lang/String;)V

    .line 92
    .restart local v0    # "entry":Lcom/android/server/wm/DisplaySettings$Entry;
    iget-object v1, p0, mEntries:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_22
    iput p2, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanLeft:I

    .line 95
    iput p3, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanTop:I

    .line 96
    iput p4, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanRight:I

    .line 97
    iput p5, v0, Lcom/android/server/wm/DisplaySettings$Entry;->overscanBottom:I

    goto :goto_d
.end method

.method public writeSettingsLocked()V
    .registers 9

    .prologue
    .line 189
    :try_start_0
    iget-object v5, p0, mFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_a4

    move-result-object v4

    .line 196
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_6
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 197
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 198
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 199
    const/4 v5, 0x0

    const-string/jumbo v6, "display-settings"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 201
    iget-object v5, p0, mEntries:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_be

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplaySettings$Entry;

    .line 202
    .local v1, "entry":Lcom/android/server/wm/DisplaySettings$Entry;
    const/4 v5, 0x0

    const-string/jumbo v6, "display"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 203
    const/4 v5, 0x0

    const-string/jumbo v6, "name"

    iget-object v7, v1, Lcom/android/server/wm/DisplaySettings$Entry;->name:Ljava/lang/String;

    invoke-interface {v3, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 204
    iget v5, v1, Lcom/android/server/wm/DisplaySettings$Entry;->overscanLeft:I

    if-eqz v5, :cond_5b

    .line 205
    const/4 v5, 0x0

    const-string/jumbo v6, "overscanLeft"

    iget v7, v1, Lcom/android/server/wm/DisplaySettings$Entry;->overscanLeft:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 207
    :cond_5b
    iget v5, v1, Lcom/android/server/wm/DisplaySettings$Entry;->overscanTop:I

    if-eqz v5, :cond_6c

    .line 208
    const/4 v5, 0x0

    const-string/jumbo v6, "overscanTop"

    iget v7, v1, Lcom/android/server/wm/DisplaySettings$Entry;->overscanTop:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 210
    :cond_6c
    iget v5, v1, Lcom/android/server/wm/DisplaySettings$Entry;->overscanRight:I

    if-eqz v5, :cond_7d

    .line 211
    const/4 v5, 0x0

    const-string/jumbo v6, "overscanRight"

    iget v7, v1, Lcom/android/server/wm/DisplaySettings$Entry;->overscanRight:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 213
    :cond_7d
    iget v5, v1, Lcom/android/server/wm/DisplaySettings$Entry;->overscanBottom:I

    if-eqz v5, :cond_8e

    .line 214
    const/4 v5, 0x0

    const-string/jumbo v6, "overscanBottom"

    iget v7, v1, Lcom/android/server/wm/DisplaySettings$Entry;->overscanBottom:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 216
    :cond_8e
    const/4 v5, 0x0

    const-string/jumbo v6, "display"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_95} :catch_96

    goto :goto_2e

    .line 222
    .end local v1    # "entry":Lcom/android/server/wm/DisplaySettings$Entry;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_96
    move-exception v0

    .line 223
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "WindowManager"

    const-string v6, "Failed to write display settings, restoring backup."

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    iget-object v5, p0, mFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 226
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    :goto_a3
    return-void

    .line 190
    :catch_a4
    move-exception v0

    .line 191
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to write display settings: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a3

    .line 219
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :cond_be
    const/4 v5, 0x0

    :try_start_bf
    const-string/jumbo v6, "display-settings"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 220
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 221
    iget-object v5, p0, mFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_cd} :catch_96

    goto :goto_a3
.end method
