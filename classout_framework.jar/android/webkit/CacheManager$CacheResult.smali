.class public Landroid/webkit/CacheManager$CacheResult;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheResult"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field contentLength:J

.field contentdisposition:Ljava/lang/String;

.field crossDomain:Ljava/lang/String;

.field encoding:Ljava/lang/String;

.field etag:Ljava/lang/String;

.field expires:J

.field expiresString:Ljava/lang/String;

.field httpStatusCode:I

.field inStream:Ljava/io/InputStream;

.field lastModified:Ljava/lang/String;

.field localPath:Ljava/lang/String;

.field location:Ljava/lang/String;

.field mimeType:Ljava/lang/String;

.field outFile:Ljava/io/File;

.field outStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentDisposition()Ljava/lang/String;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, contentdisposition:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    .prologue
    .line 85
    iget-wide v0, p0, contentLength:J

    return-wide v0
.end method

.method public getETag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, etag:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires()J
    .registers 3

    .prologue
    .line 106
    iget-wide v0, p0, expires:J

    return-wide v0
.end method

.method public getExpiresString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, expiresString:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpStatusCode()I
    .registers 2

    .prologue
    .line 76
    iget v0, p0, httpStatusCode:I

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, inStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLastModified()Ljava/lang/String;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, lastModified:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, localPath:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, location:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, outStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public setContentLength(J)V
    .registers 4
    .param p1, "contentLength"    # J

    .prologue
    .line 223
    iput-wide p1, p0, contentLength:J

    .line 224
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 2
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 216
    iput-object p1, p0, encoding:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 207
    iput-object p1, p0, inStream:Ljava/io/InputStream;

    .line 208
    return-void
.end method
