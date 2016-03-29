.class public Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;
.super Ljava/lang/Object;
.source "MultiUserPreferences.java"


# instance fields
.field private final DEBUG:Z

.field private final KnoxUserId:I

.field private isSupportMum:Z

.field private mContext:Landroid/content/Context;

.field private mDoc:Lorg/w3c/dom/Document;

.field private mDocBuilder:Ljavax/xml/parsers/DocumentBuilder;

.field private mDocFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mUserDataXml:Ljava/io/File;

.field private mUserId:I


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;-><init>(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 53
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "forPenWindow"    # Z

    .prologue
    const/16 v4, 0x64

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->DEBUG:Z

    .line 39
    iput-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->isSupportMum:Z

    .line 40
    iput-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    .line 41
    iput-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 43
    iput-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mDocFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 44
    iput-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mDocBuilder:Ljavax/xml/parsers/DocumentBuilder;

    .line 45
    iput-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mUserDataXml:Ljava/io/File;

    .line 46
    iput v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mUserId:I

    .line 47
    iput-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    .line 49
    iput v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->KnoxUserId:I

    .line 57
    iput-object p2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mContext:Landroid/content/Context;

    .line 58
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->isSupportMum:Z

    .line 59
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mUserId:I

    .line 60
    iget-boolean v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->isSupportMum:Z

    iget v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mUserId:I

    if-lt v3, v4, :cond_0

    :goto_0
    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->isSupportMum:Z

    .line 61
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->isSupportMum:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 62
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    .line 63
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 67
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 60
    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->openUserData(Z)V

    goto :goto_1
.end method

.method private validate(Lorg/w3c/dom/Document;)Z
    .locals 5
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    const/4 v1, 0x0

    .line 108
    const-string v2, "MultiUserPreferences"

    const-string v3, "validate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    if-nez p1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v1

    .line 113
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 114
    .local v0, "root":Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mUserId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public openUserData(Z)V
    .locals 6
    .param p1, "forPenWindow"    # Z

    .prologue
    .line 71
    const-string v3, "MultiUserPreferences"

    const-string v4, "openUserData"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v1, 0x1

    .line 75
    .local v1, "makeNewFile":Z
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mDocFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 76
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mDocFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mDocBuilder:Ljavax/xml/parsers/DocumentBuilder;

    .line 77
    if-eqz p1, :cond_1

    .line 78
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/userfile_for_penwindow_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mUserId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mUserDataXml:Ljava/io/File;

    .line 85
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mDocBuilder:Ljavax/xml/parsers/DocumentBuilder;

    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mUserDataXml:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    .line 86
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    invoke-direct {p0, v3}, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->validate(Lorg/w3c/dom/Document;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    const/4 v1, 0x0

    .line 89
    if-eqz v1, :cond_0

    .line 90
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mDocBuilder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    .line 91
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    if-eqz v3, :cond_0

    .line 92
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mUserId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 93
    .local v2, "rootElement":Lorg/w3c/dom/Element;
    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v3, v2}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 104
    .end local v2    # "rootElement":Lorg/w3c/dom/Element;
    :cond_0
    :goto_1
    return-void

    .line 81
    :cond_1
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/userfile_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mUserId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mUserDataXml:Ljava/io/File;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_1

    .line 99
    .end local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v0

    .line 100
    .local v0, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_1

    .line 101
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v0

    .line 102
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public removeAllUserData(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 363
    const-string v2, "MultiUserPreferences"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeAllUserData - userId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/userfile_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    .local v0, "userDataXml":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 369
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/userfile_for_penwindow_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 371
    .local v1, "userPenWindowDataXml":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 372
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 374
    :cond_1
    return-void
.end method

.method public removeUserData(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 353
    const-string v1, "MultiUserPreferences"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeUserData - userId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/MultiUserPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/userfile_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 356
    .local v0, "userDataXml":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 359
    :cond_0
    return-void
.end method
