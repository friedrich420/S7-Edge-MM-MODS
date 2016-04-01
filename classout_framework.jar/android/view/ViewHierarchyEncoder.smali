.class public Landroid/view/ViewHierarchyEncoder;
.super Ljava/lang/Object;
.source "ViewHierarchyEncoder.java"


# static fields
.field private static final SIG_BOOLEAN:B = 0x5at

.field private static final SIG_BYTE:B = 0x42t

.field private static final SIG_DOUBLE:B = 0x44t

.field private static final SIG_END_MAP:S = 0x0s

.field private static final SIG_FLOAT:B = 0x46t

.field private static final SIG_INT:B = 0x49t

.field private static final SIG_LONG:B = 0x4at

.field private static final SIG_MAP:B = 0x4dt

.field private static final SIG_SHORT:B = 0x53t

.field private static final SIG_STRING:B = 0x52t


# instance fields
.field private mCharset:Ljava/nio/charset/Charset;

.field private mPropertyId:S

.field private final mPropertyNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private final mStream:Ljava/io/DataOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/ByteArrayOutputStream;)V
    .registers 4
    .param p1, "stream"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, mPropertyNames:Ljava/util/Map;

    .line 65
    const/4 v0, 0x1

    iput-short v0, p0, mPropertyId:S

    .line 66
    const-string/jumbo v0, "utf-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, mCharset:Ljava/nio/charset/Charset;

    .line 69
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, mStream:Ljava/io/DataOutputStream;

    .line 70
    return-void
.end method

.method private createPropertyIndex(Ljava/lang/String;)S
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 127
    iget-object v1, p0, mPropertyNames:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    .line 128
    .local v0, "index":Ljava/lang/Short;
    if-nez v0, :cond_1a

    .line 129
    iget-short v1, p0, mPropertyId:S

    add-int/lit8 v2, v1, 0x1

    int-to-short v2, v2

    iput-short v2, p0, mPropertyId:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    .line 130
    iget-object v1, p0, mPropertyNames:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_1a
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v1

    return v1
.end method

.method private endPropertyMap()V
    .registers 2

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, v0}, writeShort(S)V

    .line 146
    return-void
.end method

.method private startPropertyMap()V
    .registers 3

    .prologue
    .line 138
    :try_start_0
    iget-object v0, p0, mStream:Ljava/io/DataOutputStream;

    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    .line 142
    :goto_7
    return-void

    .line 139
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method private writeBoolean(Z)V
    .registers 4
    .param p1, "v"    # Z

    .prologue
    .line 150
    :try_start_0
    iget-object v0, p0, mStream:Ljava/io/DataOutputStream;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 151
    iget-object v1, p0, mStream:Ljava/io/DataOutputStream;

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    :goto_c
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_12

    .line 155
    :goto_f
    return-void

    .line 151
    :cond_10
    const/4 v0, 0x0

    goto :goto_c

    .line 152
    :catch_12
    move-exception v0

    goto :goto_f
.end method

.method private writeFloat(F)V
    .registers 4
    .param p1, "v"    # F

    .prologue
    .line 177
    :try_start_0
    iget-object v0, p0, mStream:Ljava/io/DataOutputStream;

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 178
    iget-object v0, p0, mStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    .line 182
    :goto_c
    return-void

    .line 179
    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method private writeInt(I)V
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 168
    :try_start_0
    iget-object v0, p0, mStream:Ljava/io/DataOutputStream;

    const/16 v1, 0x49

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 169
    iget-object v0, p0, mStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    .line 173
    :goto_c
    return-void

    .line 170
    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method private writeShort(S)V
    .registers 4
    .param p1, "s"    # S

    .prologue
    .line 159
    :try_start_0
    iget-object v0, p0, mStream:Ljava/io/DataOutputStream;

    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 160
    iget-object v0, p0, mStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    .line 164
    :goto_c
    return-void

    .line 161
    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method private writeString(Ljava/lang/String;)V
    .registers 6
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 185
    if-nez p1, :cond_4

    .line 186
    const-string p1, ""

    .line 190
    :cond_4
    :try_start_4
    iget-object v2, p0, mStream:Ljava/io/DataOutputStream;

    const/16 v3, 0x52

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 191
    iget-object v2, p0, mCharset:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 193
    .local v0, "bytes":[B
    array-length v2, v0

    const/16 v3, 0x7fff

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-short v1, v2

    .line 194
    .local v1, "len":S
    iget-object v2, p0, mStream:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 196
    iget-object v2, p0, mStream:Ljava/io/DataOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_24} :catch_25

    .line 200
    .end local v0    # "bytes":[B
    .end local v1    # "len":S
    :goto_24
    return-void

    .line 197
    :catch_25
    move-exception v2

    goto :goto_24
.end method


# virtual methods
.method public addProperty(Ljava/lang/String;F)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "v"    # F

    .prologue
    .line 109
    invoke-direct {p0, p1}, createPropertyIndex(Ljava/lang/String;)S

    move-result v0

    invoke-direct {p0, v0}, writeShort(S)V

    .line 110
    invoke-direct {p0, p2}, writeFloat(F)V

    .line 111
    return-void
.end method

.method public addProperty(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "v"    # I

    .prologue
    .line 104
    invoke-direct {p0, p1}, createPropertyIndex(Ljava/lang/String;)S

    move-result v0

    invoke-direct {p0, v0}, writeShort(S)V

    .line 105
    invoke-direct {p0, p2}, writeInt(I)V

    .line 106
    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-direct {p0, p1}, createPropertyIndex(Ljava/lang/String;)S

    move-result v0

    invoke-direct {p0, v0}, writeShort(S)V

    .line 115
    invoke-direct {p0, p2}, writeString(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public addProperty(Ljava/lang/String;S)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "s"    # S

    .prologue
    .line 99
    invoke-direct {p0, p1}, createPropertyIndex(Ljava/lang/String;)S

    move-result v0

    invoke-direct {p0, v0}, writeShort(S)V

    .line 100
    invoke-direct {p0, p2}, writeShort(S)V

    .line 101
    return-void
.end method

.method public addProperty(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "v"    # Z

    .prologue
    .line 94
    invoke-direct {p0, p1}, createPropertyIndex(Ljava/lang/String;)S

    move-result v0

    invoke-direct {p0, v0}, writeShort(S)V

    .line 95
    invoke-direct {p0, p2}, writeBoolean(Z)V

    .line 96
    return-void
.end method

.method public addPropertyKey(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-direct {p0, p1}, createPropertyIndex(Ljava/lang/String;)S

    move-result v0

    invoke-direct {p0, v0}, writeShort(S)V

    .line 124
    return-void
.end method

.method public beginObject(Ljava/lang/Object;)V
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 73
    invoke-direct {p0}, startPropertyMap()V

    .line 74
    const-string/jumbo v0, "meta:__name__"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string/jumbo v0, "meta:__hash__"

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, addProperty(Ljava/lang/String;I)V

    .line 76
    return-void
.end method

.method public endObject()V
    .registers 1

    .prologue
    .line 79
    invoke-direct {p0}, endPropertyMap()V

    .line 80
    return-void
.end method

.method public endStream()V
    .registers 5

    .prologue
    .line 84
    invoke-direct {p0}, startPropertyMap()V

    .line 85
    const-string v2, "__name__"

    const-string/jumbo v3, "propertyIndex"

    invoke-virtual {p0, v2, v3}, addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v2, p0, mPropertyNames:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 87
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Short;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    invoke-direct {p0, v2}, writeShort(S)V

    .line 88
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, writeString(Ljava/lang/String;)V

    goto :goto_15

    .line 90
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Short;>;"
    :cond_38
    invoke-direct {p0}, endPropertyMap()V

    .line 91
    return-void
.end method
