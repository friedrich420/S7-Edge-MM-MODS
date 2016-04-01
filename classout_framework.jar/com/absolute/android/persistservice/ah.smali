.class public Lcom/absolute/android/persistservice/ah;
.super Lcom/absolute/android/persistence/IABTPersistedFile$Stub;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/io/File;

.field private c:Lcom/absolute/android/persistservice/v;

.field private d:Z

.field private e:Ljava/io/FileInputStream;

.field private f:Ljava/io/FileOutputStream;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLcom/absolute/android/persistservice/v;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lcom/absolute/android/persistence/IABTPersistedFile$Stub;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, d:Z

    .line 31
    iput-object v1, p0, e:Ljava/io/FileInputStream;

    .line 32
    iput-object v1, p0, f:Ljava/io/FileOutputStream;

    .line 46
    iput-object p3, p0, c:Lcom/absolute/android/persistservice/v;

    .line 48
    iput-object p1, p0, a:Ljava/lang/String;

    .line 54
    iput-boolean p2, p0, d:Z

    .line 56
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, b:Ljava/io/File;

    .line 59
    iget-object v0, p0, b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_29

    .line 61
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 63
    :cond_29
    return-void
.end method


# virtual methods
.method public close()V
    .registers 5

    .prologue
    .line 174
    :try_start_0
    iget-object v0, p0, e:Ljava/io/FileInputStream;

    if-eqz v0, :cond_c

    .line 175
    iget-object v0, p0, e:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, e:Ljava/io/FileInputStream;

    .line 179
    :cond_c
    iget-object v0, p0, f:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_18

    .line 180
    iget-object v0, p0, f:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, f:Ljava/io/FileOutputStream;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_18} :catch_19

    .line 187
    :cond_18
    :goto_18
    return-void

    .line 184
    :catch_19
    move-exception v0

    .line 185
    iget-object v1, p0, c:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException in close() for Persisted File: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_18
.end method

.method public delete()Z
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public exists()Z
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 200
    invoke-virtual {p0}, close()V

    .line 201
    invoke-super {p0}, Lcom/absolute/android/persistence/IABTPersistedFile$Stub;->finalize()V

    .line 202
    return-void
.end method

.method public read([B)I
    .registers 6

    .prologue
    const/4 v0, -0x1

    .line 126
    .line 128
    :try_start_1
    iget-object v1, p0, e:Ljava/io/FileInputStream;

    if-nez v1, :cond_e

    .line 129
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, b:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, e:Ljava/io/FileInputStream;

    .line 131
    :cond_e
    iget-object v1, p0, e:Ljava/io/FileInputStream;

    invoke-virtual {v1, p1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_13} :catch_31
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_13} :catch_15

    move-result v0

    .line 144
    :goto_14
    return v0

    .line 139
    :catch_15
    move-exception v1

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException for read() from Persisted File: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    iget-object v3, p0, c:Lcom/absolute/android/persistservice/v;

    invoke-virtual {v3, v2, v1}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14

    .line 132
    :catch_31
    move-exception v1

    goto :goto_14
.end method

.method public skip(J)J
    .registers 8

    .prologue
    const-wide/16 v0, -0x1

    .line 151
    .line 153
    :try_start_2
    iget-object v2, p0, e:Ljava/io/FileInputStream;

    if-nez v2, :cond_f

    .line 154
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, b:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, e:Ljava/io/FileInputStream;

    .line 156
    :cond_f
    iget-object v2, p0, e:Ljava/io/FileInputStream;

    invoke-virtual {v2, p1, p2}, Ljava/io/FileInputStream;->skip(J)J
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_14} :catch_16
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_14} :catch_32

    move-result-wide v0

    .line 166
    :goto_15
    return-wide v0

    .line 157
    :catch_16
    move-exception v2

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileNotFoundException for skip() on Persisted File: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 159
    iget-object v4, p0, c:Lcom/absolute/android/persistservice/v;

    invoke-virtual {v4, v3, v2}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15

    .line 161
    :catch_32
    move-exception v2

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException for skip() on Persisted File: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 163
    iget-object v4, p0, c:Lcom/absolute/android/persistservice/v;

    invoke-virtual {v4, v3, v2}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15
.end method

.method public write([B)I
    .registers 6

    .prologue
    const/4 v0, -0x1

    .line 76
    .line 78
    :try_start_1
    iget-object v1, p0, f:Ljava/io/FileOutputStream;

    if-nez v1, :cond_10

    .line 79
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, b:Ljava/io/File;

    iget-boolean v3, p0, d:Z

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v1, p0, f:Ljava/io/FileOutputStream;

    .line 81
    :cond_10
    iget-object v1, p0, f:Ljava/io/FileOutputStream;

    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 82
    array-length v0, p1
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_16} :catch_17
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_16} :catch_33

    .line 94
    :goto_16
    return v0

    .line 84
    :catch_17
    move-exception v1

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileNotFoundException for write() to Persisted File: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    iget-object v3, p0, c:Lcom/absolute/android/persistservice/v;

    invoke-virtual {v3, v2, v1}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16

    .line 89
    :catch_33
    move-exception v1

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException for write() to Persisted File: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    iget-object v3, p0, c:Lcom/absolute/android/persistservice/v;

    invoke-virtual {v3, v2, v1}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16
.end method

.method public writeWithCount([BII)I
    .registers 8

    .prologue
    const/4 v0, -0x1

    .line 101
    .line 103
    :try_start_1
    iget-object v1, p0, f:Ljava/io/FileOutputStream;

    if-nez v1, :cond_10

    .line 104
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, b:Ljava/io/File;

    iget-boolean v3, p0, d:Z

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v1, p0, f:Ljava/io/FileOutputStream;

    .line 106
    :cond_10
    iget-object v1, p0, f:Ljava/io/FileOutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_15} :catch_16
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_15} :catch_33

    .line 119
    :goto_15
    return p3

    .line 109
    :catch_16
    move-exception v1

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileNotFoundException for write() to Persisted File: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 111
    iget-object v3, p0, c:Lcom/absolute/android/persistservice/v;

    invoke-virtual {v3, v2, v1}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move p3, v0

    .line 118
    goto :goto_15

    .line 114
    :catch_33
    move-exception v1

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException for write() to Persisted File: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 116
    iget-object v3, p0, c:Lcom/absolute/android/persistservice/v;

    invoke-virtual {v3, v2, v1}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move p3, v0

    .line 117
    goto :goto_15
.end method
