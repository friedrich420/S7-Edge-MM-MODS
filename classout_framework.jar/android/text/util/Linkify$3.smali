.class final Landroid/text/util/Linkify$3;
.super Ljava/lang/Object;
.source "Linkify.java"

# interfaces
.implements Landroid/text/util/Linkify$MatchFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/util/Linkify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final acceptMatch(Ljava/lang/CharSequence;II)Z
    .registers 15
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 193
    .local v0, "digitCount":I
    move v4, p2

    .local v4, "i":I
    :goto_2
    if-ge v4, p3, :cond_13

    .line 194
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 195
    add-int/lit8 v0, v0, 0x1

    .line 193
    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 199
    :cond_13
    const/4 v6, 0x5

    .line 200
    .local v6, "phoneNumberMinimumDigit":I
    const/16 v5, 0xd

    .line 201
    .local v5, "phoneNumberMaximumDigit":I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Framework_ConfigLinkifyDigit"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "digitsByCSCFeature":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_58

    .line 205
    const/4 v4, 0x0

    .line 206
    const/4 v9, 0x2

    new-array v1, v9, [I

    const/4 v9, 0x0

    aput v6, v1, v9

    const/4 v9, 0x1

    aput v5, v1, v9

    .line 207
    .local v1, "digits":[I
    new-instance v7, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v9, 0x3b

    invoke-direct {v7, v9}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 208
    .local v7, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v7, v2}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 210
    :cond_3a
    :goto_3a
    :try_start_3a
    invoke-virtual {v7}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4f

    .line 211
    invoke-virtual {v7}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v8

    .line 212
    .local v8, "str":Ljava/lang/String;
    if-eqz v8, :cond_3a

    .line 213
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v1, v4

    .line 214
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 217
    .end local v8    # "str":Ljava/lang/String;
    :cond_4f
    const/4 v9, 0x0

    aget v6, v1, v9

    .line 218
    const/4 v9, 0x1

    aget v5, v1, v9
    :try_end_55
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3a .. :try_end_55} :catch_5e
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_55} :catch_67

    .line 220
    if-gtz v6, :cond_58

    .line 221
    const/4 v6, 0x1

    .line 232
    .end local v1    # "digits":[I
    .end local v7    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :cond_58
    :goto_58
    if-lt v0, v6, :cond_70

    if-gt v0, v5, :cond_70

    .line 233
    const/4 v9, 0x1

    .line 235
    :goto_5d
    return v9

    .line 224
    .restart local v1    # "digits":[I
    .restart local v7    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :catch_5e
    move-exception v3

    .line 225
    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v9, "Linkify"

    const-string v10, "ArrayIndexOutOfBoundsException occured. CSC value is invalid."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    .line 227
    .end local v3    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_67
    move-exception v3

    .line 228
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v9, "Linkify"

    const-string v10, "NumberFormatException occured. CSC value is invalid."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    .line 235
    .end local v1    # "digits":[I
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v7    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :cond_70
    const/4 v9, 0x0

    goto :goto_5d
.end method
