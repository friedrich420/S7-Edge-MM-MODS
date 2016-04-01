.class public Landroid/widget/SearchView$SearchAutoComplete;
.super Landroid/widget/AutoCompleteTextView;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchAutoComplete"
.end annotation


# instance fields
.field private mSearchView:Landroid/widget/SearchView;

.field private mThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1842
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 1843
    invoke-virtual {p0}, getThreshold()I

    move-result v0

    iput v0, p0, mThreshold:I

    .line 1844
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1847
    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1848
    invoke-virtual {p0}, getThreshold()I

    move-result v0

    iput v0, p0, mThreshold:I

    .line 1849
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttrs"    # I

    .prologue
    .line 1852
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1853
    invoke-virtual {p0}, getThreshold()I

    move-result v0

    iput v0, p0, mThreshold:I

    .line 1854
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttrs"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 1858
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1859
    invoke-virtual {p0}, getThreshold()I

    move-result v0

    iput v0, p0, mThreshold:I

    .line 1860
    return-void
.end method

.method static synthetic access$1600(Landroid/widget/SearchView$SearchAutoComplete;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/SearchView$SearchAutoComplete;

    .prologue
    .line 1836
    invoke-direct {p0}, isEmpty()Z

    move-result v0

    return v0
.end method

.method private isEmpty()Z
    .registers 2

    .prologue
    .line 1877
    invoke-virtual {p0}, getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public enoughToFilter()Z
    .registers 2

    .prologue
    .line 1950
    iget v0, p0, mThreshold:I

    if-lez v0, :cond_a

    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1939
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1940
    iget-object v0, p0, mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onTextFocusChanged()V

    .line 1941
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 1955
    const/4 v2, 0x4

    if-ne p1, v2, :cond_37

    .line 1958
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1a

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1a

    .line 1959
    invoke-virtual {p0}, getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1960
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_19

    .line 1961
    invoke-virtual {v0, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 1983
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_19
    :goto_19
    return v1

    .line 1964
    :cond_1a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_37

    .line 1965
    invoke-virtual {p0}, getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1966
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_29

    .line 1967
    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 1969
    :cond_29
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_37

    .line 1978
    const/4 v1, 0x0

    goto :goto_19

    .line 1983
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_37
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_19
.end method

.method public onWindowFocusChanged(Z)V
    .registers 7
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 1907
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onWindowFocusChanged(Z)V

    .line 1910
    iget-object v3, p0, mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->hasCurrentDrag()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1935
    :cond_b
    :goto_b
    return-void

    .line 1917
    :cond_c
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1918
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v2

    .line 1919
    .local v2, "mKeyboard":I
    if-nez v2, :cond_b

    iget-object v3, p0, mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->hasCurrentDrag()Z

    move-result v3

    if-nez v3, :cond_b

    .line 1925
    if-eqz p1, :cond_b

    iget-object v3, p0, mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p0}, getVisibility()I

    move-result v3

    if-nez v3, :cond_b

    .line 1926
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1928
    .local v1, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1931
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/widget/SearchView;->isLandscapeMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1932
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, ensureImeVisible(Z)V

    goto :goto_b
.end method

.method public performCompletion()V
    .registers 1

    .prologue
    .line 1898
    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1887
    return-void
.end method

.method setSearchView(Landroid/widget/SearchView;)V
    .registers 2
    .param p1, "searchView"    # Landroid/widget/SearchView;

    .prologue
    .line 1863
    iput-object p1, p0, mSearchView:Landroid/widget/SearchView;

    .line 1864
    return-void
.end method

.method public setThreshold(I)V
    .registers 2
    .param p1, "threshold"    # I

    .prologue
    .line 1868
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 1869
    iput p1, p0, mThreshold:I

    .line 1870
    return-void
.end method
