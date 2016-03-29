.class public Lcom/android/settings/RingtoneRecommender;
.super Ljava/lang/Object;
.source "RingtoneRecommender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/RingtoneRecommender$OnHighlightResultListener;
    }
.end annotation


# instance fields
.field public mIsOpen:Z

.field private mListener:Lcom/android/settings/RingtoneRecommender$OnHighlightResultListener;

.field private mMode:I

.field private final mSmat:Lcom/samsung/audio/Smat;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-boolean v0, p0, Lcom/android/settings/RingtoneRecommender;->mIsOpen:Z

    .line 106
    iput v0, p0, Lcom/android/settings/RingtoneRecommender;->mMode:I

    .line 145
    new-instance v0, Lcom/samsung/audio/Smat;

    invoke-direct {v0}, Lcom/samsung/audio/Smat;-><init>()V

    iput-object v0, p0, Lcom/android/settings/RingtoneRecommender;->mSmat:Lcom/samsung/audio/Smat;

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/RingtoneRecommender;)Lcom/samsung/audio/Smat;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RingtoneRecommender;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings/RingtoneRecommender;->mSmat:Lcom/samsung/audio/Smat;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/RingtoneRecommender;)Lcom/android/settings/RingtoneRecommender$OnHighlightResultListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/RingtoneRecommender;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings/RingtoneRecommender;->mListener:Lcom/android/settings/RingtoneRecommender$OnHighlightResultListener;

    return-object v0
.end method

.method private extract()Z
    .locals 4

    .prologue
    .line 250
    iget-object v1, p0, Lcom/android/settings/RingtoneRecommender;->mSmat:Lcom/samsung/audio/Smat;

    invoke-virtual {v1}, Lcom/samsung/audio/Smat;->extract()I

    move-result v0

    .line 251
    .local v0, "result":I
    const-string v1, "RingtoneRecommender"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extract() result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    if-nez v0, :cond_0

    .line 253
    new-instance v1, Lcom/android/settings/RingtoneRecommender$1;

    const-string v2, "Recommender thread"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/RingtoneRecommender$1;-><init>(Lcom/android/settings/RingtoneRecommender;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/settings/RingtoneRecommender$1;->start()V

    .line 290
    const/4 v1, 0x1

    .line 292
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 232
    const-string v1, "RingtoneRecommender"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close() is opened ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/RingtoneRecommender;->mIsOpen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-boolean v1, p0, Lcom/android/settings/RingtoneRecommender;->mIsOpen:Z

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/android/settings/RingtoneRecommender;->mSmat:Lcom/samsung/audio/Smat;

    invoke-virtual {v1}, Lcom/samsung/audio/Smat;->deinit()I

    move-result v1

    if-nez v1, :cond_0

    .line 235
    iput-boolean v0, p0, Lcom/android/settings/RingtoneRecommender;->mIsOpen:Z

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/RingtoneRecommender;->mListener:Lcom/android/settings/RingtoneRecommender$OnHighlightResultListener;

    .line 237
    const/4 v0, 0x1

    .line 240
    :cond_0
    return v0
.end method

.method public doExtract(Lcom/android/settings/RingtoneRecommender$OnHighlightResultListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/android/settings/RingtoneRecommender$OnHighlightResultListener;

    .prologue
    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/RingtoneRecommender;->mIsOpen:Z

    .line 219
    iput-object p1, p0, Lcom/android/settings/RingtoneRecommender;->mListener:Lcom/android/settings/RingtoneRecommender$OnHighlightResultListener;

    .line 220
    invoke-direct {p0}, Lcom/android/settings/RingtoneRecommender;->extract()Z

    move-result v0

    return v0
.end method

.method public is_extractable()Z
    .locals 2

    .prologue
    .line 316
    const-string v0, "RingtoneRecommender"

    const-string v1, "is_extractable is opened"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v0, p0, Lcom/android/settings/RingtoneRecommender;->mSmat:Lcom/samsung/audio/Smat;

    invoke-virtual {v0}, Lcom/samsung/audio/Smat;->is_extractable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    const-string v0, "RingtoneRecommender"

    const-string v1, "is_extractable is opened return true"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 v0, 0x1

    .line 323
    :goto_0
    return v0

    .line 322
    :cond_0
    const-string v0, "RingtoneRecommender"

    const-string v1, "is_extractable is opened return false"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open(Ljava/lang/String;)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/RingtoneRecommender;->open(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public open(Ljava/lang/String;I)I
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 199
    iput p2, p0, Lcom/android/settings/RingtoneRecommender;->mMode:I

    .line 200
    iget-object v1, p0, Lcom/android/settings/RingtoneRecommender;->mSmat:Lcom/samsung/audio/Smat;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/audio/Smat;->init(Ljava/lang/String;I)I

    move-result v0

    .line 201
    .local v0, "result":I
    const-string v1, "RingtoneRecommender"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open() result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return v0
.end method
