.class public Landroid/view/textservice/SpellCheckerSession;
.super Ljava/lang/Object;
.source "SpellCheckerSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textservice/SpellCheckerSession$InternalListener;,
        Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;,
        Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MSG_ON_GET_SUGGESTION_MULTIPLE:I = 0x1

.field private static final MSG_ON_GET_SUGGESTION_MULTIPLE_FOR_SENTENCE:I = 0x2

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.view.textservice.scs"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mInternalListener:Landroid/view/textservice/SpellCheckerSession$InternalListener;

.field private mIsUsed:Z

.field private final mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

.field private final mSpellCheckerSessionListener:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;

.field private final mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

.field private final mSubtype:Landroid/view/textservice/SpellCheckerSubtype;

.field private final mTextServicesManager:Lcom/android/internal/textservice/ITextServicesManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 84
    const-class v0, Landroid/view/textservice/SpellCheckerSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/internal/textservice/ITextServicesManager;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;Landroid/view/textservice/SpellCheckerSubtype;)V
    .registers 7
    .param p1, "info"    # Landroid/view/textservice/SpellCheckerInfo;
    .param p2, "tsm"    # Lcom/android/internal/textservice/ITextServicesManager;
    .param p3, "listener"    # Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;
    .param p4, "subtype"    # Landroid/view/textservice/SpellCheckerSubtype;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Landroid/view/textservice/SpellCheckerSession$1;

    invoke-direct {v0, p0}, Landroid/view/textservice/SpellCheckerSession$1;-><init>(Landroid/view/textservice/SpellCheckerSession;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 126
    if-eqz p1, :cond_10

    if-eqz p3, :cond_10

    if-nez p2, :cond_16

    .line 127
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 129
    :cond_16
    iput-object p1, p0, mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    .line 130
    new-instance v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    .line 131
    new-instance v0, Landroid/view/textservice/SpellCheckerSession$InternalListener;

    iget-object v1, p0, mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    invoke-direct {v0, v1}, Landroid/view/textservice/SpellCheckerSession$InternalListener;-><init>(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;)V

    iput-object v0, p0, mInternalListener:Landroid/view/textservice/SpellCheckerSession$InternalListener;

    .line 132
    iput-object p2, p0, mTextServicesManager:Lcom/android/internal/textservice/ITextServicesManager;

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, mIsUsed:Z

    .line 134
    iput-object p3, p0, mSpellCheckerSessionListener:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;

    .line 135
    iput-object p4, p0, mSubtype:Landroid/view/textservice/SpellCheckerSubtype;

    .line 136
    return-void
.end method

.method static synthetic access$000(Landroid/view/textservice/SpellCheckerSession;[Landroid/view/textservice/SuggestionsInfo;)V
    .registers 2
    .param p0, "x0"    # Landroid/view/textservice/SpellCheckerSession;
    .param p1, "x1"    # [Landroid/view/textservice/SuggestionsInfo;

    .prologue
    .line 83
    invoke-direct {p0, p1}, handleOnGetSuggestionsMultiple([Landroid/view/textservice/SuggestionsInfo;)V

    return-void
.end method

.method static synthetic access$100(Landroid/view/textservice/SpellCheckerSession;[Landroid/view/textservice/SentenceSuggestionsInfo;)V
    .registers 2
    .param p0, "x0"    # Landroid/view/textservice/SpellCheckerSession;
    .param p1, "x1"    # [Landroid/view/textservice/SentenceSuggestionsInfo;

    .prologue
    .line 83
    invoke-direct {p0, p1}, handleOnGetSentenceSuggestionsMultiple([Landroid/view/textservice/SentenceSuggestionsInfo;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 83
    sget-object v0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method private handleOnGetSentenceSuggestionsMultiple([Landroid/view/textservice/SentenceSuggestionsInfo;)V
    .registers 3
    .param p1, "suggestionInfos"    # [Landroid/view/textservice/SentenceSuggestionsInfo;

    .prologue
    .line 218
    iget-object v0, p0, mSpellCheckerSessionListener:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;

    invoke-interface {v0, p1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;->onGetSentenceSuggestions([Landroid/view/textservice/SentenceSuggestionsInfo;)V

    .line 219
    return-void
.end method

.method private handleOnGetSuggestionsMultiple([Landroid/view/textservice/SuggestionsInfo;)V
    .registers 3
    .param p1, "suggestionInfos"    # [Landroid/view/textservice/SuggestionsInfo;

    .prologue
    .line 214
    iget-object v0, p0, mSpellCheckerSessionListener:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;

    invoke-interface {v0, p1}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;->onGetSuggestions([Landroid/view/textservice/SuggestionsInfo;)V

    .line 215
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->cancel()V

    .line 159
    return-void
.end method

.method public close()V
    .registers 3

    .prologue
    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsUsed:Z

    .line 168
    :try_start_3
    iget-object v0, p0, mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->close()V

    .line 169
    iget-object v0, p0, mTextServicesManager:Lcom/android/internal/textservice/ITextServicesManager;

    iget-object v1, p0, mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    invoke-interface {v0, v1}, Lcom/android/internal/textservice/ITextServicesManager;->finishSpellCheckerService(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_f} :catch_10

    .line 173
    :goto_f
    return-void

    .line 170
    :catch_10
    move-exception v0

    goto :goto_f
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 547
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 548
    iget-boolean v0, p0, mIsUsed:Z

    if-eqz v0, :cond_11

    .line 549
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "SpellCheckerSession was not finished properly.You should call finishShession() when you finished to use a spell checker."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-virtual {p0}, close()V

    .line 553
    :cond_11
    return-void
.end method

.method public getSentenceSuggestions([Landroid/view/textservice/TextInfo;I)V
    .registers 4
    .param p1, "textInfos"    # [Landroid/view/textservice/TextInfo;
    .param p2, "suggestionsLimit"    # I

    .prologue
    .line 181
    iget-object v0, p0, mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    invoke-virtual {v0, p1, p2}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->getSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)V

    .line 183
    return-void
.end method

.method public getSpellChecker()Landroid/view/textservice/SpellCheckerInfo;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, mSpellCheckerInfo:Landroid/view/textservice/SpellCheckerInfo;

    return-object v0
.end method

.method public getSpellCheckerSessionListener()Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .registers 2

    .prologue
    .line 566
    iget-object v0, p0, mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    return-object v0
.end method

.method public getSuggestions(Landroid/view/textservice/TextInfo;I)V
    .registers 5
    .param p1, "textInfo"    # Landroid/view/textservice/TextInfo;
    .param p2, "suggestionsLimit"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 193
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/textservice/TextInfo;

    aput-object p1, v0, v1

    invoke-virtual {p0, v0, p2, v1}, getSuggestions([Landroid/view/textservice/TextInfo;IZ)V

    .line 194
    return-void
.end method

.method public getSuggestions([Landroid/view/textservice/TextInfo;IZ)V
    .registers 5
    .param p1, "textInfos"    # [Landroid/view/textservice/TextInfo;
    .param p2, "suggestionsLimit"    # I
    .param p3, "sequentialWords"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->getSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)V

    .line 211
    return-void
.end method

.method public getTextServicesSessionListener()Lcom/android/internal/textservice/ITextServicesSessionListener;
    .registers 2

    .prologue
    .line 559
    iget-object v0, p0, mInternalListener:Landroid/view/textservice/SpellCheckerSession$InternalListener;

    return-object v0
.end method

.method public isSessionDisconnected()Z
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, mSpellCheckerSessionListenerImpl:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->isDisconnected()Z

    move-result v0

    return v0
.end method
