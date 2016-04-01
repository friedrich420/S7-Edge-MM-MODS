.class public Lcom/samsung/android/contextaware/aggregator/lpp/log/DataLogging;
.super Ljava/lang/Object;
.source "DataLogging.java"


# instance fields
.field TAG:Ljava/lang/String;

.field protected fileName:Ljava/lang/String;

.field m_LoggingData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected m_fileOutStream:Ljava/io/FileOutputStream;

.field private saveFileLoc:Ljava/lang/String;

.field protected saveFilePath:Ljava/lang/String;

.field protected strLogFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "DATA_LOGGING"

    iput-object v0, p0, TAG:Ljava/lang/String;

    .line 47
    iput-object v1, p0, saveFileLoc:Ljava/lang/String;

    .line 49
    iput-object v1, p0, saveFilePath:Ljava/lang/String;

    .line 51
    iput-object v1, p0, fileName:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, m_LoggingData:Ljava/util/List;

    .line 61
    iput-object v1, p0, strLogFileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public LogInit()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 73
    iget-object v0, p0, m_LoggingData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 99
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, saveFileLoc:Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, saveFileLoc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "01_DataLogging"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, saveFilePath:Ljava/lang/String;

    .line 109
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1fd

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 149
    return-void
.end method

.method public createFileToLog()V
    .registers 1

    .prologue
    .line 245
    return-void
.end method

.method public flushLogToFile()V
    .registers 1

    .prologue
    .line 183
    return-void
.end method
