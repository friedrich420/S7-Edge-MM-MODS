.class public Landroid/text/Hyphenator;
.super Ljava/lang/Object;
.source "Hyphenator.java"


# static fields
.field private static final LOCALE_FALLBACK_DATA:[[Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field static final sEmptyHyphenator:Landroid/text/Hyphenator;

.field private static final sLock:Ljava/lang/Object;

.field static final sMap:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/Locale;",
            "Landroid/text/Hyphenator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBuffer:Ljava/nio/ByteBuffer;

.field private final mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 43
    const-string v0, "Hyphenator"

    sput-object v0, TAG:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, sLock:Ljava/lang/Object;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, sMap:Ljava/util/HashMap;

    .line 50
    new-instance v0, Landroid/text/Hyphenator;

    invoke-static {v1, v4}, Landroid/text/StaticLayout;->nLoadHyphenator(Ljava/nio/ByteBuffer;I)J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v1}, <init>(JLjava/nio/ByteBuffer;)V

    sput-object v0, sEmptyHyphenator:Landroid/text/Hyphenator;

    .line 132
    const/16 v0, 0xd

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "en-AS"

    aput-object v2, v1, v4

    const-string v2, "en-US"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "en-GU"

    aput-object v2, v1, v4

    const-string v2, "en-US"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "en-MH"

    aput-object v2, v1, v4

    const-string v2, "en-US"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "en-MP"

    aput-object v3, v2, v4

    const-string v3, "en-US"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "en-PR"

    aput-object v3, v2, v4

    const-string v3, "en-US"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "en-UM"

    aput-object v3, v2, v4

    const-string v3, "en-US"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "en-VI"

    aput-object v3, v2, v4

    const-string v3, "en-US"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "no"

    aput-object v3, v2, v4

    const-string/jumbo v3, "nb"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "am"

    aput-object v3, v2, v4

    const-string/jumbo v3, "und-Ethi"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "byn"

    aput-object v3, v2, v4

    const-string/jumbo v3, "und-Ethi"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "gez"

    aput-object v3, v2, v4

    const-string/jumbo v3, "und-Ethi"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "ti"

    aput-object v3, v2, v4

    const-string/jumbo v3, "und-Ethi"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "wal"

    aput-object v3, v2, v4

    const-string/jumbo v3, "und-Ethi"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, LOCALE_FALLBACK_DATA:[[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(JLjava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "nativePtr"    # J
    .param p3, "b"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-wide p1, p0, mNativePtr:J

    .line 61
    iput-object p3, p0, mBuffer:Ljava/nio/ByteBuffer;

    .line 62
    return-void
.end method

.method public static get(Ljava/util/Locale;)Landroid/text/Hyphenator;
    .registers 8
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 69
    sget-object v5, sLock:Ljava/lang/Object;

    monitor-enter v5

    .line 70
    :try_start_3
    sget-object v4, sMap:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/Hyphenator;

    .line 71
    .local v1, "result":Landroid/text/Hyphenator;
    if-eqz v1, :cond_10

    .line 72
    monitor-exit v5

    move-object v4, v1

    .line 101
    :goto_f
    return-object v4

    .line 78
    :cond_10
    new-instance v0, Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, "languageOnlyLocale":Ljava/util/Locale;
    sget-object v4, sMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Landroid/text/Hyphenator;
    check-cast v1, Landroid/text/Hyphenator;

    .line 80
    .restart local v1    # "result":Landroid/text/Hyphenator;
    if-eqz v1, :cond_2b

    .line 81
    sget-object v4, sMap:Ljava/util/HashMap;

    invoke-virtual {v4, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    monitor-exit v5

    move-object v4, v1

    goto :goto_f

    .line 86
    :cond_2b
    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "script":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5d

    .line 88
    new-instance v4, Ljava/util/Locale$Builder;

    invoke-direct {v4}, Ljava/util/Locale$Builder;-><init>()V

    const-string/jumbo v6, "und"

    invoke-virtual {v4, v6}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/Locale$Builder;->setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v3

    .line 92
    .local v3, "scriptOnlyLocale":Ljava/util/Locale;
    sget-object v4, sMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Landroid/text/Hyphenator;
    check-cast v1, Landroid/text/Hyphenator;

    .line 93
    .restart local v1    # "result":Landroid/text/Hyphenator;
    if-eqz v1, :cond_5d

    .line 94
    sget-object v4, sMap:Ljava/util/HashMap;

    invoke-virtual {v4, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    monitor-exit v5

    move-object v4, v1

    goto :goto_f

    .line 99
    .end local v3    # "scriptOnlyLocale":Ljava/util/Locale;
    :cond_5d
    sget-object v4, sMap:Ljava/util/HashMap;

    sget-object v6, sEmptyHyphenator:Landroid/text/Hyphenator;

    invoke-virtual {v4, p0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    monitor-exit v5
    :try_end_65
    .catchall {:try_start_3 .. :try_end_65} :catchall_68

    .line 101
    sget-object v4, sEmptyHyphenator:Landroid/text/Hyphenator;

    goto :goto_f

    .line 100
    .end local v0    # "languageOnlyLocale":Ljava/util/Locale;
    .end local v1    # "result":Landroid/text/Hyphenator;
    .end local v2    # "script":Ljava/lang/String;
    :catchall_68
    move-exception v4

    :try_start_69
    monitor-exit v5
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw v4
.end method

.method private static getSystemHyphenatorLocation()Ljava/io/File;
    .registers 2

    .prologue
    .line 124
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/usr/hyphen-data"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static init()V
    .registers 12

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 166
    sget-object v6, sMap:Ljava/util/HashMap;

    invoke-virtual {v6, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const/4 v6, 0x7

    new-array v0, v6, [Ljava/lang/String;

    const-string v6, "en-US"

    aput-object v6, v0, v10

    const-string v6, "eu"

    aput-object v6, v0, v11

    const/4 v6, 0x2

    const-string v7, "hu"

    aput-object v7, v0, v6

    const/4 v6, 0x3

    const-string v7, "hy"

    aput-object v7, v0, v6

    const/4 v6, 0x4

    const-string/jumbo v7, "nb"

    aput-object v7, v0, v6

    const/4 v6, 0x5

    const-string/jumbo v7, "nn"

    aput-object v7, v0, v6

    const/4 v6, 0x6

    const-string/jumbo v7, "und-Ethi"

    aput-object v7, v0, v6

    .line 170
    .local v0, "availableLanguages":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_30
    array-length v6, v0

    if-ge v3, v6, :cond_47

    .line 171
    aget-object v5, v0, v3

    .line 172
    .local v5, "languageTag":Ljava/lang/String;
    invoke-static {v5}, loadHyphenator(Ljava/lang/String;)Landroid/text/Hyphenator;

    move-result-object v2

    .line 173
    .local v2, "h":Landroid/text/Hyphenator;
    if-eqz v2, :cond_44

    .line 174
    sget-object v6, sMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 178
    .end local v2    # "h":Landroid/text/Hyphenator;
    .end local v5    # "languageTag":Ljava/lang/String;
    :cond_47
    const/4 v3, 0x0

    :goto_48
    sget-object v6, LOCALE_FALLBACK_DATA:[[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_6f

    .line 179
    sget-object v6, LOCALE_FALLBACK_DATA:[[Ljava/lang/String;

    aget-object v6, v6, v3

    aget-object v4, v6, v10

    .line 180
    .local v4, "language":Ljava/lang/String;
    sget-object v6, LOCALE_FALLBACK_DATA:[[Ljava/lang/String;

    aget-object v6, v6, v3

    aget-object v1, v6, v11

    .line 181
    .local v1, "fallback":Ljava/lang/String;
    sget-object v6, sMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    sget-object v8, sMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    .line 183
    .end local v1    # "fallback":Ljava/lang/String;
    .end local v4    # "language":Ljava/lang/String;
    :cond_6f
    return-void
.end method

.method private static loadHyphenator(Ljava/lang/String;)Landroid/text/Hyphenator;
    .registers 14
    .param p0, "languageTag"    # Ljava/lang/String;

    .prologue
    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hyph-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".hyb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 106
    .local v12, "patternFilename":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-static {}, getSystemHyphenatorLocation()Ljava/io/File;

    move-result-object v1

    invoke-direct {v9, v1, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 108
    .local v9, "patternFile":Ljava/io/File;
    :try_start_28
    new-instance v8, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v8, v9, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_30} :catch_53

    .line 110
    .local v8, "f":Ljava/io/RandomAccessFile;
    :try_start_30
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 111
    .local v0, "fc":Ljava/nio/channels/FileChannel;
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    .line 112
    .local v6, "buf":Ljava/nio/MappedByteBuffer;
    const/4 v1, 0x0

    invoke-static {v6, v1}, Landroid/text/StaticLayout;->nLoadHyphenator(Ljava/nio/ByteBuffer;I)J

    move-result-wide v10

    .line 113
    .local v10, "nativePtr":J
    new-instance v1, Landroid/text/Hyphenator;

    invoke-direct {v1, v10, v11, v6}, <init>(JLjava/nio/ByteBuffer;)V
    :try_end_4a
    .catchall {:try_start_30 .. :try_end_4a} :catchall_4e

    .line 115
    :try_start_4a
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    .line 119
    .end local v0    # "fc":Ljava/nio/channels/FileChannel;
    .end local v6    # "buf":Ljava/nio/MappedByteBuffer;
    .end local v8    # "f":Ljava/io/RandomAccessFile;
    .end local v10    # "nativePtr":J
    :goto_4d
    return-object v1

    .line 115
    .restart local v8    # "f":Ljava/io/RandomAccessFile;
    :catchall_4e
    move-exception v1

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    throw v1
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_53} :catch_53

    .line 117
    .end local v8    # "f":Ljava/io/RandomAccessFile;
    :catch_53
    move-exception v7

    .line 118
    .local v7, "e":Ljava/io/IOException;
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error loading hyphenation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    const/4 v1, 0x0

    goto :goto_4d
.end method


# virtual methods
.method public getNativePtr()J
    .registers 3

    .prologue
    .line 65
    iget-wide v0, p0, mNativePtr:J

    return-wide v0
.end method
