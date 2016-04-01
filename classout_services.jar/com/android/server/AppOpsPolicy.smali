.class public Lcom/android/server/AppOpsPolicy;
.super Ljava/lang/Object;
.source "AppOpsPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppOpsPolicy$PolicyOp;,
        Lcom/android/server/AppOpsPolicy$PolicyPkg;
    }
.end annotation


# static fields
.field public static final CONTROL_NOSHOW:I = 0x1

.field public static final CONTROL_SHOW:I = 0x0

.field public static final CONTROL_UNKNOWN:I = 0x2

.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "AppOpsPolicy"


# instance fields
.field final mContext:Landroid/content/Context;

.field final mFile:Ljava/io/File;

.field mPolicy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AppOpsPolicy$PolicyPkg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;Landroid/content/Context;)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mPolicy:Ljava/util/HashMap;

    .line 76
    iput-object p1, p0, mFile:Ljava/io/File;

    .line 77
    iput-object p2, p0, mContext:Landroid/content/Context;

    .line 78
    return-void
.end method

.method private getAppType(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 329
    const/4 v1, 0x0

    .line 330
    .local v1, "appType":Ljava/lang/String;
    const/4 v0, 0x0

    .line 331
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, mContext:Landroid/content/Context;

    if-eqz v3, :cond_24

    .line 333
    :try_start_6
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_10} :catch_1d

    move-result-object v0

    .line 338
    :goto_11
    if-eqz v0, :cond_1c

    .line 339
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_20

    .line 340
    const-string/jumbo v1, "system-app"

    .line 348
    :cond_1c
    :goto_1c
    return-object v1

    .line 335
    :catch_1d
    move-exception v2

    .line 336
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    goto :goto_11

    .line 342
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_20
    const-string/jumbo v1, "user-app"

    goto :goto_1c

    .line 346
    :cond_24
    const-string v3, "AppOpsPolicy"

    const-string v4, "Context is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method private readApplicationPolicy(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    .line 213
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 216
    .local v0, "outerDepth":I
    :cond_5
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_4a

    if-ne v2, v6, :cond_14

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4a

    .line 217
    :cond_14
    if-eq v2, v6, :cond_5

    const/4 v3, 0x4

    if-eq v2, v3, :cond_5

    .line 220
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "pkg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 222
    invoke-direct {p0, p1}, readPkgPolicy(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    .line 224
    :cond_2a
    const-string v3, "AppOpsPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <application>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    .line 230
    .end local v1    # "tagName":Ljava/lang/String;
    :cond_4a
    return-void
.end method

.method private readDefaultPolicy(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 189
    const-string/jumbo v3, "user-app"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    const-string/jumbo v3, "system-app"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 209
    :cond_14
    :goto_14
    return-void

    .line 193
    :cond_15
    const-string/jumbo v3, "permission"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/app/AppOpsManager;->stringToMode(Ljava/lang/String;)I

    move-result v0

    .line 195
    .local v0, "mode":I
    const-string/jumbo v3, "show"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, stringToControl(Ljava/lang/String;)I

    move-result v2

    .line 196
    .local v2, "show":I
    if-ne v0, v4, :cond_2f

    if-eq v2, v4, :cond_14

    .line 199
    :cond_2f
    iget-object v3, p0, mPolicy:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsPolicy$PolicyPkg;

    .line 200
    .local v1, "pkg":Lcom/android/server/AppOpsPolicy$PolicyPkg;
    if-nez v1, :cond_44

    .line 201
    new-instance v1, Lcom/android/server/AppOpsPolicy$PolicyPkg;

    .end local v1    # "pkg":Lcom/android/server/AppOpsPolicy$PolicyPkg;
    invoke-direct {v1, p2, v0, v2, p2}, Lcom/android/server/AppOpsPolicy$PolicyPkg;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 202
    .restart local v1    # "pkg":Lcom/android/server/AppOpsPolicy$PolicyPkg;
    iget-object v3, p0, mPolicy:Ljava/util/HashMap;

    invoke-virtual {v3, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 204
    :cond_44
    const-string v3, "AppOpsPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicate policy found for package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " of type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iput v0, v1, Lcom/android/server/AppOpsPolicy$PolicyPkg;->mode:I

    .line 207
    iput v2, v1, Lcom/android/server/AppOpsPolicy$PolicyPkg;->show:I

    goto :goto_14
.end method

.method private readOpPolicy(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/AppOpsPolicy$PolicyPkg;)V
    .registers 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "pkg"    # Lcom/android/server/AppOpsPolicy$PolicyPkg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 274
    if-nez p2, :cond_5

    .line 303
    :cond_4
    :goto_4
    return-void

    .line 277
    :cond_5
    const-string/jumbo v5, "name"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 278
    .local v3, "opName":Ljava/lang/String;
    if-nez v3, :cond_16

    .line 279
    const-string v5, "AppOpsPolicy"

    const-string v6, "Op name is null"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 282
    :cond_16
    invoke-static {v3}, Landroid/app/AppOpsManager;->stringOpToOp(Ljava/lang/String;)I

    move-result v0

    .line 283
    .local v0, "code":I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_36

    .line 284
    const-string v5, "AppOpsPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown Op: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 287
    :cond_36
    const-string/jumbo v5, "permission"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/app/AppOpsManager;->stringToMode(Ljava/lang/String;)I

    move-result v1

    .line 289
    .local v1, "mode":I
    const-string/jumbo v5, "show"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, stringToControl(Ljava/lang/String;)I

    move-result v4

    .line 290
    .local v4, "show":I
    if-ne v1, v7, :cond_50

    if-eq v4, v7, :cond_4

    .line 293
    :cond_50
    invoke-virtual {p2, v0}, Lcom/android/server/AppOpsPolicy$PolicyPkg;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsPolicy$PolicyOp;

    .line 294
    .local v2, "op":Lcom/android/server/AppOpsPolicy$PolicyOp;
    if-nez v2, :cond_61

    .line 295
    new-instance v2, Lcom/android/server/AppOpsPolicy$PolicyOp;

    .end local v2    # "op":Lcom/android/server/AppOpsPolicy$PolicyOp;
    invoke-direct {v2, v0, v1, v4}, Lcom/android/server/AppOpsPolicy$PolicyOp;-><init>(III)V

    .line 296
    .restart local v2    # "op":Lcom/android/server/AppOpsPolicy$PolicyOp;
    invoke-virtual {p2, v0, v2}, Lcom/android/server/AppOpsPolicy$PolicyPkg;->put(ILjava/lang/Object;)V

    goto :goto_4

    .line 298
    :cond_61
    const-string v5, "AppOpsPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duplicate policy found for package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Lcom/android/server/AppOpsPolicy$PolicyPkg;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Lcom/android/server/AppOpsPolicy$PolicyPkg;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " op: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/server/AppOpsPolicy$PolicyOp;->op:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iput v1, v2, Lcom/android/server/AppOpsPolicy$PolicyOp;->mode:I

    .line 301
    iput v4, v2, Lcom/android/server/AppOpsPolicy$PolicyOp;->show:I

    goto/16 :goto_4
.end method

.method private readPkgPolicy(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 15
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x3

    const/4 v10, 0x0

    .line 234
    const-string/jumbo v9, "name"

    invoke-interface {p1, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 235
    .local v4, "packageName":Ljava/lang/String;
    if-nez v4, :cond_c

    .line 270
    :cond_b
    return-void

    .line 237
    :cond_c
    const-string/jumbo v9, "type"

    invoke-interface {p1, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "appType":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 240
    const-string/jumbo v9, "permission"

    invoke-interface {p1, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/app/AppOpsManager;->stringToMode(Ljava/lang/String;)I

    move-result v2

    .line 242
    .local v2, "mode":I
    const-string/jumbo v9, "show"

    invoke-interface {p1, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, stringToControl(Ljava/lang/String;)I

    move-result v6

    .line 243
    .local v6, "show":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "key":Ljava/lang/String;
    iget-object v9, p0, mPolicy:Ljava/util/HashMap;

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsPolicy$PolicyPkg;

    .line 245
    .local v5, "pkg":Lcom/android/server/AppOpsPolicy$PolicyPkg;
    if-nez v5, :cond_7f

    .line 246
    new-instance v5, Lcom/android/server/AppOpsPolicy$PolicyPkg;

    .end local v5    # "pkg":Lcom/android/server/AppOpsPolicy$PolicyPkg;
    invoke-direct {v5, v4, v2, v6, v0}, Lcom/android/server/AppOpsPolicy$PolicyPkg;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 247
    .restart local v5    # "pkg":Lcom/android/server/AppOpsPolicy$PolicyPkg;
    iget-object v9, p0, mPolicy:Ljava/util/HashMap;

    invoke-virtual {v9, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    :goto_56
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 258
    .local v3, "outerDepth":I
    :cond_5a
    :goto_5a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, "type":I
    const/4 v9, 0x1

    if-eq v8, v9, :cond_b

    if-ne v8, v12, :cond_69

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v3, :cond_b

    .line 259
    :cond_69
    if-eq v8, v12, :cond_5a

    const/4 v9, 0x4

    if-eq v8, v9, :cond_5a

    .line 262
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 263
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v9, "op"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a6

    .line 264
    invoke-direct {p0, p1, v5}, readOpPolicy(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/AppOpsPolicy$PolicyPkg;)V

    goto :goto_5a

    .line 249
    .end local v3    # "outerDepth":I
    .end local v7    # "tagName":Ljava/lang/String;
    .end local v8    # "type":I
    :cond_7f
    const-string v9, "AppOpsPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Duplicate policy found for package: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " of type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iput v2, v5, Lcom/android/server/AppOpsPolicy$PolicyPkg;->mode:I

    .line 252
    iput v6, v5, Lcom/android/server/AppOpsPolicy$PolicyPkg;->show:I

    goto :goto_56

    .line 266
    .restart local v3    # "outerDepth":I
    .restart local v7    # "tagName":Ljava/lang/String;
    .restart local v8    # "type":I
    :cond_a6
    const-string v9, "AppOpsPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown element under <pkg>: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5a
.end method

.method public static stringToControl(Ljava/lang/String;)I
    .registers 2
    .param p0, "show"    # Ljava/lang/String;

    .prologue
    .line 64
    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 65
    const/4 v0, 0x0

    .line 69
    :goto_a
    return v0

    .line 66
    :cond_b
    const-string/jumbo v0, "false"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 67
    const/4 v0, 0x1

    goto :goto_a

    .line 69
    :cond_16
    const/4 v0, 0x2

    goto :goto_a
.end method


# virtual methods
.method debugPoilcy()V
    .registers 6

    .prologue
    .line 306
    iget-object v4, p0, mPolicy:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 308
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsPolicy$PolicyPkg;>;>;"
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 309
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 312
    .local v2, "key":Ljava/lang/String;
    iget-object v4, p0, mPolicy:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsPolicy$PolicyPkg;

    .line 313
    .local v3, "pkg":Lcom/android/server/AppOpsPolicy$PolicyPkg;
    if-eqz v3, :cond_a

    .line 320
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_27
    invoke-virtual {v3}, Lcom/android/server/AppOpsPolicy$PolicyPkg;->size()I

    move-result v4

    if-ge v0, v4, :cond_a

    .line 321
    invoke-virtual {v3, v0}, Lcom/android/server/AppOpsPolicy$PolicyPkg;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsPolicy$PolicyOp;

    .line 320
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 326
    .end local v0    # "i":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "pkg":Lcom/android/server/AppOpsPolicy$PolicyPkg;
    :cond_36
    return-void
.end method

.method public getDefualtMode(ILjava/lang/String;)I
    .registers 12
    .param p1, "code"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    .line 393
    const/4 v1, 0x2

    .line 398
    .local v1, "mode":I
    iget-object v6, p0, mPolicy:Ljava/util/HashMap;

    if-nez v6, :cond_8

    move v2, v1

    .line 439
    .end local v1    # "mode":I
    .local v2, "mode":I
    :goto_7
    return v2

    .line 404
    .end local v2    # "mode":I
    .restart local v1    # "mode":I
    :cond_8
    invoke-direct {p0, p2}, getAppType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 405
    .local v5, "type":Ljava/lang/String;
    if-eqz v5, :cond_1f

    .line 407
    move-object v0, v5

    .line 408
    .local v0, "key":Ljava/lang/String;
    iget-object v6, p0, mPolicy:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsPolicy$PolicyPkg;

    .line 409
    .local v4, "pkg":Lcom/android/server/AppOpsPolicy$PolicyPkg;
    if-eqz v4, :cond_1f

    iget v6, v4, Lcom/android/server/AppOpsPolicy$PolicyPkg;->mode:I

    if-eq v6, v8, :cond_1f

    .line 412
    iget v1, v4, Lcom/android/server/AppOpsPolicy$PolicyPkg;->mode:I

    .line 416
    .end local v0    # "key":Ljava/lang/String;
    .end local v4    # "pkg":Lcom/android/server/AppOpsPolicy$PolicyPkg;
    :cond_1f
    move-object v0, p2

    .line 417
    .restart local v0    # "key":Ljava/lang/String;
    if-eqz v5, :cond_39

    .line 418
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    :cond_39
    iget-object v6, p0, mPolicy:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsPolicy$PolicyPkg;

    .line 421
    .restart local v4    # "pkg":Lcom/android/server/AppOpsPolicy$PolicyPkg;
    if-eqz v4, :cond_57

    .line 422
    iget v6, v4, Lcom/android/server/AppOpsPolicy$PolicyPkg;->mode:I

    if-eq v6, v8, :cond_49

    .line 425
    iget v1, v4, Lcom/android/server/AppOpsPolicy$PolicyPkg;->mode:I

    .line 428
    :cond_49
    invoke-virtual {v4, p1}, Lcom/android/server/AppOpsPolicy$PolicyPkg;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsPolicy$PolicyOp;

    .line 429
    .local v3, "op":Lcom/android/server/AppOpsPolicy$PolicyOp;
    if-eqz v3, :cond_57

    .line 430
    iget v6, v3, Lcom/android/server/AppOpsPolicy$PolicyOp;->mode:I

    if-eq v6, v8, :cond_57

    .line 433
    iget v1, v3, Lcom/android/server/AppOpsPolicy$PolicyOp;->mode:I

    .end local v3    # "op":Lcom/android/server/AppOpsPolicy$PolicyOp;
    :cond_57
    move v2, v1

    .line 439
    .end local v1    # "mode":I
    .restart local v2    # "mode":I
    goto :goto_7
.end method

.method public isControlAllowed(ILjava/lang/String;)Z
    .registers 13
    .param p1, "code"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    .line 352
    const/4 v0, 0x1

    .line 353
    .local v0, "isShow":Z
    const/4 v5, 0x2

    .line 358
    .local v5, "show":I
    iget-object v7, p0, mPolicy:Ljava/util/HashMap;

    if-nez v7, :cond_9

    move v1, v0

    .line 389
    .end local v0    # "isShow":Z
    .local v1, "isShow":I
    :goto_8
    return v1

    .line 362
    .end local v1    # "isShow":I
    .restart local v0    # "isShow":Z
    :cond_9
    invoke-direct {p0, p2}, getAppType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 363
    .local v6, "type":Ljava/lang/String;
    if-eqz v6, :cond_20

    .line 364
    move-object v2, v6

    .line 365
    .local v2, "key":Ljava/lang/String;
    iget-object v7, p0, mPolicy:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsPolicy$PolicyPkg;

    .line 366
    .local v4, "pkg":Lcom/android/server/AppOpsPolicy$PolicyPkg;
    if-eqz v4, :cond_20

    iget v7, v4, Lcom/android/server/AppOpsPolicy$PolicyPkg;->show:I

    if-eq v7, v9, :cond_20

    .line 367
    iget v5, v4, Lcom/android/server/AppOpsPolicy$PolicyPkg;->show:I

    .line 370
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "pkg":Lcom/android/server/AppOpsPolicy$PolicyPkg;
    :cond_20
    move-object v2, p2

    .line 371
    .restart local v2    # "key":Ljava/lang/String;
    if-eqz v6, :cond_3a

    .line 372
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 374
    :cond_3a
    iget-object v7, p0, mPolicy:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsPolicy$PolicyPkg;

    .line 375
    .restart local v4    # "pkg":Lcom/android/server/AppOpsPolicy$PolicyPkg;
    if-eqz v4, :cond_58

    .line 376
    iget v7, v4, Lcom/android/server/AppOpsPolicy$PolicyPkg;->show:I

    if-eq v7, v9, :cond_4a

    .line 377
    iget v5, v4, Lcom/android/server/AppOpsPolicy$PolicyPkg;->show:I

    .line 379
    :cond_4a
    invoke-virtual {v4, p1}, Lcom/android/server/AppOpsPolicy$PolicyPkg;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsPolicy$PolicyOp;

    .line 380
    .local v3, "op":Lcom/android/server/AppOpsPolicy$PolicyOp;
    if-eqz v3, :cond_58

    .line 381
    iget v7, v3, Lcom/android/server/AppOpsPolicy$PolicyOp;->show:I

    if-eq v7, v9, :cond_58

    .line 382
    iget v5, v3, Lcom/android/server/AppOpsPolicy$PolicyOp;->show:I

    .line 386
    .end local v3    # "op":Lcom/android/server/AppOpsPolicy$PolicyOp;
    :cond_58
    const/4 v7, 0x1

    if-ne v5, v7, :cond_5c

    .line 387
    const/4 v0, 0x0

    :cond_5c
    move v1, v0

    .line 389
    .restart local v1    # "isShow":I
    goto :goto_8
.end method

.method readPolicy()V
    .registers 14

    .prologue
    const/4 v12, 0x3

    const/4 v9, 0x2

    const/4 v11, 0x1

    .line 121
    iget-object v8, p0, mFile:Ljava/io/File;

    monitor-enter v8

    .line 123
    :try_start_6
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v7, p0, mFile:Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_d} :catch_4f
    .catchall {:try_start_6 .. :try_end_d} :catchall_76

    .line 129
    .local v3, "stream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 131
    .local v4, "success":Z
    :try_start_e
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 132
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    invoke-interface {v2, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 134
    const/4 v4, 0x1

    .line 136
    :cond_17
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, "type":I
    if-eq v6, v9, :cond_1f

    if-ne v6, v11, :cond_17

    .line 139
    :cond_1f
    if-eq v6, v9, :cond_79

    .line 140
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "no start tag found"

    invoke-direct {v7, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2a
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_2a} :catch_2a
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_2a} :catch_aa
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_2a} :catch_dd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_2a} :catch_126
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_2a} :catch_15d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_2a} :catch_185
    .catchall {:try_start_e .. :try_end_2a} :catchall_1ad

    .line 163
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    :catch_2a
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_2b
    const-string v7, "AppOpsPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_2b .. :try_end_43} :catchall_1ad

    .line 176
    if-nez v4, :cond_4a

    .line 177
    :try_start_45
    iget-object v7, p0, mPolicy:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_76

    .line 180
    :cond_4a
    :try_start_4a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_1b9
    .catchall {:try_start_4a .. :try_end_4d} :catchall_76

    .line 184
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_4d
    :try_start_4d
    monitor-exit v8

    .line 185
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .end local v4    # "success":Z
    :goto_4e
    return-void

    .line 124
    :catch_4f
    move-exception v0

    .line 125
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v7, "AppOpsPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "App ops policy file ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") not found; Skipping."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    monitor-exit v8

    goto :goto_4e

    .line 184
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_76
    move-exception v7

    monitor-exit v8
    :try_end_78
    .catchall {:try_start_4d .. :try_end_78} :catchall_76

    throw v7

    .line 143
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "success":Z
    .restart local v6    # "type":I
    :cond_79
    :try_start_79
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 145
    .local v1, "outerDepth":I
    :cond_7d
    :goto_7d
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v11, :cond_14e

    if-ne v6, v12, :cond_8b

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v1, :cond_14e

    .line 146
    :cond_8b
    if-eq v6, v12, :cond_7d

    const/4 v7, 0x4

    if-eq v6, v7, :cond_7d

    .line 151
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 152
    .local v5, "tagName":Ljava/lang/String;
    const-string/jumbo v7, "user-app"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a6

    const-string/jumbo v7, "system-app"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d1

    .line 154
    :cond_a6
    invoke-direct {p0, v2, v5}, readDefaultPolicy(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_a9
    .catch Ljava/lang/IllegalStateException; {:try_start_79 .. :try_end_a9} :catch_2a
    .catch Ljava/lang/NullPointerException; {:try_start_79 .. :try_end_a9} :catch_aa
    .catch Ljava/lang/NumberFormatException; {:try_start_79 .. :try_end_a9} :catch_dd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_79 .. :try_end_a9} :catch_126
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_a9} :catch_15d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_79 .. :try_end_a9} :catch_185
    .catchall {:try_start_79 .. :try_end_a9} :catchall_1ad

    goto :goto_7d

    .line 165
    .end local v1    # "outerDepth":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "type":I
    :catch_aa
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_ab
    const-string v7, "AppOpsPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c3
    .catchall {:try_start_ab .. :try_end_c3} :catchall_1ad

    .line 176
    if-nez v4, :cond_ca

    .line 177
    :try_start_c5
    iget-object v7, p0, mPolicy:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V
    :try_end_ca
    .catchall {:try_start_c5 .. :try_end_ca} :catchall_76

    .line 180
    :cond_ca
    :try_start_ca
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_cd} :catch_ce
    .catchall {:try_start_ca .. :try_end_cd} :catchall_76

    goto :goto_4d

    .line 181
    :catch_ce
    move-exception v7

    goto/16 :goto_4d

    .line 155
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "outerDepth":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "tagName":Ljava/lang/String;
    .restart local v6    # "type":I
    :cond_d1
    :try_start_d1
    const-string v7, "application"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_105

    .line 156
    invoke-direct {p0, v2}, readApplicationPolicy(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_dc
    .catch Ljava/lang/IllegalStateException; {:try_start_d1 .. :try_end_dc} :catch_2a
    .catch Ljava/lang/NullPointerException; {:try_start_d1 .. :try_end_dc} :catch_aa
    .catch Ljava/lang/NumberFormatException; {:try_start_d1 .. :try_end_dc} :catch_dd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d1 .. :try_end_dc} :catch_126
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_dc} :catch_15d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d1 .. :try_end_dc} :catch_185
    .catchall {:try_start_d1 .. :try_end_dc} :catchall_1ad

    goto :goto_7d

    .line 167
    .end local v1    # "outerDepth":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "type":I
    :catch_dd
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_de
    const-string v7, "AppOpsPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f6
    .catchall {:try_start_de .. :try_end_f6} :catchall_1ad

    .line 176
    if-nez v4, :cond_fd

    .line 177
    :try_start_f8
    iget-object v7, p0, mPolicy:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V
    :try_end_fd
    .catchall {:try_start_f8 .. :try_end_fd} :catchall_76

    .line 180
    :cond_fd
    :try_start_fd
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_100
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_100} :catch_102
    .catchall {:try_start_fd .. :try_end_100} :catchall_76

    goto/16 :goto_4d

    .line 181
    :catch_102
    move-exception v7

    goto/16 :goto_4d

    .line 158
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "outerDepth":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "tagName":Ljava/lang/String;
    .restart local v6    # "type":I
    :cond_105
    :try_start_105
    const-string v7, "AppOpsPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown element under <appops-policy>: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_124
    .catch Ljava/lang/IllegalStateException; {:try_start_105 .. :try_end_124} :catch_2a
    .catch Ljava/lang/NullPointerException; {:try_start_105 .. :try_end_124} :catch_aa
    .catch Ljava/lang/NumberFormatException; {:try_start_105 .. :try_end_124} :catch_dd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_105 .. :try_end_124} :catch_126
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_124} :catch_15d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_105 .. :try_end_124} :catch_185
    .catchall {:try_start_105 .. :try_end_124} :catchall_1ad

    goto/16 :goto_7d

    .line 169
    .end local v1    # "outerDepth":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "type":I
    :catch_126
    move-exception v0

    .line 170
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_127
    const-string v7, "AppOpsPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13f
    .catchall {:try_start_127 .. :try_end_13f} :catchall_1ad

    .line 176
    if-nez v4, :cond_146

    .line 177
    :try_start_141
    iget-object v7, p0, mPolicy:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V
    :try_end_146
    .catchall {:try_start_141 .. :try_end_146} :catchall_76

    .line 180
    :cond_146
    :try_start_146
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_149
    .catch Ljava/io/IOException; {:try_start_146 .. :try_end_149} :catch_14b
    .catchall {:try_start_146 .. :try_end_149} :catchall_76

    goto/16 :goto_4d

    .line 181
    :catch_14b
    move-exception v7

    goto/16 :goto_4d

    .line 176
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "outerDepth":I
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "type":I
    :cond_14e
    if-nez v4, :cond_155

    .line 177
    :try_start_150
    iget-object v7, p0, mPolicy:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V
    :try_end_155
    .catchall {:try_start_150 .. :try_end_155} :catchall_76

    .line 180
    :cond_155
    :try_start_155
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_158
    .catch Ljava/io/IOException; {:try_start_155 .. :try_end_158} :catch_15a
    .catchall {:try_start_155 .. :try_end_158} :catchall_76

    goto/16 :goto_4d

    .line 181
    :catch_15a
    move-exception v7

    goto/16 :goto_4d

    .line 171
    .end local v1    # "outerDepth":I
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "type":I
    :catch_15d
    move-exception v0

    .line 172
    .local v0, "e":Ljava/io/IOException;
    :try_start_15e
    const-string v7, "AppOpsPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_176
    .catchall {:try_start_15e .. :try_end_176} :catchall_1ad

    .line 176
    if-nez v4, :cond_17d

    .line 177
    :try_start_178
    iget-object v7, p0, mPolicy:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V
    :try_end_17d
    .catchall {:try_start_178 .. :try_end_17d} :catchall_76

    .line 180
    :cond_17d
    :try_start_17d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_180
    .catch Ljava/io/IOException; {:try_start_17d .. :try_end_180} :catch_182
    .catchall {:try_start_17d .. :try_end_180} :catchall_76

    goto/16 :goto_4d

    .line 181
    :catch_182
    move-exception v7

    goto/16 :goto_4d

    .line 173
    .end local v0    # "e":Ljava/io/IOException;
    :catch_185
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_186
    const-string v7, "AppOpsPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19e
    .catchall {:try_start_186 .. :try_end_19e} :catchall_1ad

    .line 176
    if-nez v4, :cond_1a5

    .line 177
    :try_start_1a0
    iget-object v7, p0, mPolicy:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V
    :try_end_1a5
    .catchall {:try_start_1a0 .. :try_end_1a5} :catchall_76

    .line 180
    :cond_1a5
    :try_start_1a5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1a8
    .catch Ljava/io/IOException; {:try_start_1a5 .. :try_end_1a8} :catch_1aa
    .catchall {:try_start_1a5 .. :try_end_1a8} :catchall_76

    goto/16 :goto_4d

    .line 181
    :catch_1aa
    move-exception v7

    goto/16 :goto_4d

    .line 176
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catchall_1ad
    move-exception v7

    if-nez v4, :cond_1b5

    .line 177
    :try_start_1b0
    iget-object v9, p0, mPolicy:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V
    :try_end_1b5
    .catchall {:try_start_1b0 .. :try_end_1b5} :catchall_76

    .line 180
    :cond_1b5
    :try_start_1b5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1b8
    .catch Ljava/io/IOException; {:try_start_1b5 .. :try_end_1b8} :catch_1bc
    .catchall {:try_start_1b5 .. :try_end_1b8} :catchall_76

    .line 182
    :goto_1b8
    :try_start_1b8
    throw v7
    :try_end_1b9
    .catchall {:try_start_1b8 .. :try_end_1b9} :catchall_76

    .line 181
    .local v0, "e":Ljava/lang/IllegalStateException;
    :catch_1b9
    move-exception v7

    goto/16 :goto_4d

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1bc
    move-exception v9

    goto :goto_1b8
.end method
