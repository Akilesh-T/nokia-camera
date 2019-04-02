.class public Lcom/android/camera/barcode/BarcodeTextActivity;
.super Landroid/app/Activity;
.source "BarcodeTextActivity.java"


# static fields
.field public static final SHOW_SEARCH_BUTTON:Ljava/lang/String; = "show_search_button"

.field public static final SHOW_TEXT:Ljava/lang/String; = "show_text"


# instance fields
.field private mShowSearchButton:Z

.field private mTextView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private closeInputMethod(Landroid/widget/EditText;)V
    .locals 7
    .param p1, "view"    # Landroid/widget/EditText;

    .prologue
    .line 86
    const-class v0, Landroid/widget/EditText;

    .line 88
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/widget/EditText;>;"
    :try_start_0
    const-string v3, "setShowSoftInputOnFocus"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 89
    .local v2, "setShowSoftInputOnFocus":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 90
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v2    # "setShowSoftInputOnFocus":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v3, 0x7f040021

    invoke-virtual {p0, v3}, Lcom/android/camera/barcode/BarcodeTextActivity;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Lcom/android/camera/barcode/BarcodeTextActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 39
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 41
    invoke-virtual {p0}, Lcom/android/camera/barcode/BarcodeTextActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 42
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "show_text"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "text":Ljava/lang/String;
    const-string v3, "show_search_button"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/camera/barcode/BarcodeTextActivity;->mShowSearchButton:Z

    .line 45
    const v3, 0x7f0f00a7

    invoke-virtual {p0, v3}, Lcom/android/camera/barcode/BarcodeTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/camera/barcode/BarcodeTextActivity;->mTextView:Landroid/widget/EditText;

    .line 46
    iget-object v3, p0, Lcom/android/camera/barcode/BarcodeTextActivity;->mTextView:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v3, p0, Lcom/android/camera/barcode/BarcodeTextActivity;->mTextView:Landroid/widget/EditText;

    invoke-direct {p0, v3}, Lcom/android/camera/barcode/BarcodeTextActivity;->closeInputMethod(Landroid/widget/EditText;)V

    .line 49
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/camera/barcode/BarcodeTextActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 54
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v2, 0x7f100000

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 55
    iget-boolean v2, p0, Lcom/android/camera/barcode/BarcodeTextActivity;->mShowSearchButton:Z

    if-nez v2, :cond_0

    .line 56
    const v2, 0x7f0f0246

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 57
    .local v1, "item":Landroid/view/MenuItem;
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 59
    .end local v1    # "item":Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 7
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x1

    .line 64
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 65
    .local v2, "itemId":I
    const v4, 0x102002c

    if-ne v2, v4, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/android/camera/barcode/BarcodeTextActivity;->finish()V

    .line 81
    :cond_0
    :goto_0
    return v6

    .line 68
    :cond_1
    const v4, 0x7f0f0246

    if-ne v2, v4, :cond_2

    .line 69
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 70
    .local v1, "intentText":Landroid/content/Intent;
    const-string v4, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v4, "query"

    iget-object v5, p0, Lcom/android/camera/barcode/BarcodeTextActivity;->mTextView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    invoke-virtual {p0, v1}, Lcom/android/camera/barcode/BarcodeTextActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 74
    .end local v1    # "intentText":Landroid/content/Intent;
    :cond_2
    const v4, 0x7f0f0247

    if-ne v2, v4, :cond_0

    .line 75
    const-string v4, "clipboard"

    invoke-virtual {p0, v4}, Lcom/android/camera/barcode/BarcodeTextActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 76
    .local v0, "cm":Landroid/content/ClipboardManager;
    const-string v4, "Label"

    iget-object v5, p0, Lcom/android/camera/barcode/BarcodeTextActivity;->mTextView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v3

    .line 77
    .local v3, "mClipData":Landroid/content/ClipData;
    invoke-virtual {v0, v3}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/camera/barcode/BarcodeTextActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08004f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
