.class public Landroid/webkit/WebResourceResponse;
.super Ljava/lang/Object;
.source "WebResourceResponse.java"


# instance fields
.field private mEncoding:Ljava/lang/String;

.field private mImmutable:Z

.field private mInputStream:Ljava/io/InputStream;

.field private mMimeType:Ljava/lang/String;

.field private mReasonPhrase:Ljava/lang/String;

.field private mResponseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V
    .registers 7
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "statusCode"    # I
    .param p4, "reasonPhrase"    # Ljava/lang/String;
    .param p6, "data"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    .local p5, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p6}, <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 76
    invoke-virtual {p0, p3, p4}, setStatusCodeAndReasonPhrase(ILjava/lang/String;)V

    .line 77
    invoke-virtual {p0, p5}, setResponseHeaders(Ljava/util/Map;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .registers 4
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/io/InputStream;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, mMimeType:Ljava/lang/String;

    .line 53
    iput-object p2, p0, mEncoding:Ljava/lang/String;

    .line 54
    invoke-virtual {p0, p3}, setData(Ljava/io/InputStream;)V

    .line 55
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V
    .registers 8
    .param p1, "immutable"    # Z
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;
    .param p4, "statusCode"    # I
    .param p5, "reasonPhrase"    # Ljava/lang/String;
    .param p7, "data"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    .prologue
    .line 219
    .local p6, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-boolean p1, p0, mImmutable:Z

    .line 221
    iput-object p2, p0, mMimeType:Ljava/lang/String;

    .line 222
    iput-object p3, p0, mEncoding:Ljava/lang/String;

    .line 223
    iput p4, p0, mStatusCode:I

    .line 224
    iput-object p5, p0, mReasonPhrase:Ljava/lang/String;

    .line 225
    iput-object p6, p0, mResponseHeaders:Ljava/util/Map;

    .line 226
    iput-object p7, p0, mInputStream:Ljava/io/InputStream;

    .line 227
    return-void
.end method

.method private checkImmutable()V
    .registers 3

    .prologue
    .line 230
    iget-boolean v0, p0, mImmutable:Z

    if-eqz v0, :cond_c

    .line 231
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This WebResourceResponse instance is immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_c
    return-void
.end method


# virtual methods
.method public getData()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, mInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, mEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, mReasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, mResponseHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getStatusCode()I
    .registers 2

    .prologue
    .line 156
    iget v0, p0, mStatusCode:I

    return v0
.end method

.method public setData(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "data"    # Ljava/io/InputStream;

    .prologue
    .line 195
    invoke-direct {p0}, checkImmutable()V

    .line 197
    if-eqz p1, :cond_19

    const-class v0, Ljava/io/StringBufferInputStream;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 198
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "StringBufferInputStream is deprecated and must not be passed to a WebResourceResponse"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_19
    iput-object p1, p0, mInputStream:Ljava/io/InputStream;

    .line 202
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 2
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-direct {p0}, checkImmutable()V

    .line 107
    iput-object p1, p0, mEncoding:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .registers 2
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0}, checkImmutable()V

    .line 87
    iput-object p1, p0, mMimeType:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setResponseHeaders(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, checkImmutable()V

    .line 175
    iput-object p1, p0, mResponseHeaders:Ljava/util/Map;

    .line 176
    return-void
.end method

.method public setStatusCodeAndReasonPhrase(ILjava/lang/String;)V
    .registers 7
    .param p1, "statusCode"    # I
    .param p2, "reasonPhrase"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-direct {p0}, checkImmutable()V

    .line 129
    const/16 v2, 0x64

    if-ge p1, v2, :cond_10

    .line 130
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "statusCode can\'t be less than 100."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 131
    :cond_10
    const/16 v2, 0x257

    if-le p1, v2, :cond_1d

    .line 132
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "statusCode can\'t be greater than 599."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 133
    :cond_1d
    const/16 v2, 0x12b

    if-le p1, v2, :cond_2e

    const/16 v2, 0x190

    if-ge p1, v2, :cond_2e

    .line 134
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "statusCode can\'t be in the [300, 399] range."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 135
    :cond_2e
    if-nez p2, :cond_39

    .line 136
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "reasonPhrase can\'t be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 137
    :cond_39
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 138
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "reasonPhrase can\'t be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 139
    :cond_4c
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4d
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_67

    .line 140
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 141
    .local v0, "c":I
    const/16 v2, 0x7f

    if-le v0, v2, :cond_64

    .line 142
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "reasonPhrase can\'t contain non-ASCII characters."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 139
    :cond_64
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    .line 146
    .end local v0    # "c":I
    :cond_67
    iput p1, p0, mStatusCode:I

    .line 147
    iput-object p2, p0, mReasonPhrase:Ljava/lang/String;

    .line 148
    return-void
.end method
