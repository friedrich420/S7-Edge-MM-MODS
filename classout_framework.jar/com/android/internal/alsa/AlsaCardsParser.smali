.class public Lcom/android/internal/alsa/AlsaCardsParser;
.super Ljava/lang/Object;
.source "AlsaCardsParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AlsaCardsParser"

.field private static final kCardsFilePath:Ljava/lang/String; = "/proc/asound/cards"

.field private static mTokenizer:Lcom/android/internal/alsa/LineTokenizer;


# instance fields
.field private mCardRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 36
    new-instance v0, Lcom/android/internal/alsa/LineTokenizer;

    const-string v1, " :[]"

    invoke-direct {v0, v1}, Lcom/android/internal/alsa/LineTokenizer;-><init>(Ljava/lang/String;)V

    sput-object v0, mTokenizer:Lcom/android/internal/alsa/LineTokenizer;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mCardRecords:Ljava/util/ArrayList;

    .line 99
    return-void
.end method

.method static synthetic access$000()Lcom/android/internal/alsa/LineTokenizer;
    .registers 1

    .prologue
    .line 30
    sget-object v0, mTokenizer:Lcom/android/internal/alsa/LineTokenizer;

    return-object v0
.end method

.method public static hasCardNumber(Ljava/util/ArrayList;I)Z
    .registers 5
    .param p1, "cardNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "recs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    .line 196
    .local v0, "cardRec":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    iget v2, v0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardNum:I

    if-ne v2, p1, :cond_4

    .line 197
    const/4 v2, 0x1

    .line 200
    .end local v0    # "cardRec":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    :goto_15
    return v2

    :cond_16
    const/4 v2, 0x0

    goto :goto_15
.end method


# virtual methods
.method public Log(Ljava/lang/String;)V
    .registers 2
    .param p1, "heading"    # Ljava/lang/String;

    .prologue
    .line 224
    return-void
.end method

.method public getCardRecordAt(I)Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 143
    iget-object v0, p0, mCardRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    return-object v0
.end method

.method public getCardRecordFor(I)Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    .registers 5
    .param p1, "cardNum"    # I

    .prologue
    .line 147
    iget-object v2, p0, mCardRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    .line 148
    .local v1, "rec":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    iget v2, v1, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardNum:I

    if-ne v2, p1, :cond_6

    .line 153
    .end local v1    # "rec":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    :goto_16
    return-object v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public getDefaultCard()I
    .registers 3

    .prologue
    .line 185
    invoke-virtual {p0}, getDefaultUsbCard()I

    move-result v0

    .line 187
    .local v0, "card":I
    if-gez v0, :cond_18

    invoke-virtual {p0}, getNumCardRecords()I

    move-result v1

    if-lez v1, :cond_18

    .line 189
    invoke-virtual {p0}, getNumCardRecords()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, getCardRecordAt(I)Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    move-result-object v1

    iget v0, v1, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardNum:I

    .line 191
    :cond_18
    return v0
.end method

.method public getDefaultUsbCard()I
    .registers 4

    .prologue
    .line 174
    iget-object v2, p0, mCardRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    .line 175
    .local v1, "rec":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    iget-boolean v2, v1, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mIsUsb:Z

    if-eqz v2, :cond_6

    .line 176
    iget v2, v1, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardNum:I

    .line 180
    .end local v1    # "rec":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    :goto_18
    return v2

    :cond_19
    const/4 v2, -0x1

    goto :goto_18
.end method

.method public getNewCardRecords(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "prevScanRecs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v1, "newRecs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;>;"
    iget-object v3, p0, mCardRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    .line 207
    .local v2, "rec":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    iget v3, v2, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardNum:I

    invoke-static {p1, v3}, hasCardNumber(Ljava/util/ArrayList;I)Z

    move-result v3

    if-nez v3, :cond_b

    .line 208
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 211
    .end local v2    # "rec":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    :cond_23
    return-object v1
.end method

.method public getNumCardRecords()I
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, mCardRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getScanRecords()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, mCardRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isCardUsb(I)Z
    .registers 5
    .param p1, "cardNum"    # I

    .prologue
    .line 161
    iget-object v2, p0, mCardRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    .line 162
    .local v1, "rec":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    iget v2, v1, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardNum:I

    if-ne v2, p1, :cond_6

    .line 163
    iget-boolean v2, v1, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mIsUsb:Z

    .line 167
    .end local v1    # "rec":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    :goto_18
    return v2

    :cond_19
    const/4 v2, 0x0

    goto :goto_18
.end method

.method public scan()V
    .registers 8

    .prologue
    .line 105
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, mCardRecords:Ljava/util/ArrayList;

    .line 107
    new-instance v2, Ljava/io/File;

    const-string v6, "/proc/asound/cards"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v2, "cardsFile":Ljava/io/File;
    :try_start_e
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 110
    .local v5, "reader":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 111
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    const-string v4, ""

    .line 112
    .local v4, "line":Ljava/lang/String;
    :goto_1a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2f

    .line 113
    new-instance v1, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    invoke-direct {v1, p0}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;-><init>(Lcom/android/internal/alsa/AlsaCardsParser;)V

    .line 117
    .local v1, "cardRecord":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->parse(Ljava/lang/String;I)Z

    .line 119
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 120
    if-nez v4, :cond_33

    .line 130
    .end local v1    # "cardRecord":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    :cond_2f
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 136
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/FileReader;
    :goto_32
    return-void

    .line 126
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "cardRecord":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :cond_33
    const/4 v6, 0x1

    invoke-virtual {v1, v4, v6}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->parse(Ljava/lang/String;I)Z

    .line 128
    iget-object v6, p0, mCardRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_3c} :catch_3d
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_3c} :catch_42

    goto :goto_1a

    .line 131
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v1    # "cardRecord":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/FileReader;
    :catch_3d
    move-exception v3

    .line 132
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_32

    .line 133
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_42
    move-exception v3

    .line 134
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_32
.end method
