.class Lcom/facebook/share/widget/ShareDialog$NativeHandler;
.super Lcom/facebook/internal/FacebookDialogBase$ModeHandler;
.source "ShareDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/ShareDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase",
        "<",
        "Lcom/facebook/share/model/ShareContent;",
        "Lcom/facebook/share/Sharer$Result;",
        ">.ModeHandler;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/widget/ShareDialog;


# direct methods
.method private constructor <init>(Lcom/facebook/share/widget/ShareDialog;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/facebook/share/widget/ShareDialog$NativeHandler;->this$0:Lcom/facebook/share/widget/ShareDialog;

    invoke-direct {p0, p1}, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;-><init>(Lcom/facebook/internal/FacebookDialogBase;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/widget/ShareDialog;Lcom/facebook/share/widget/ShareDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/share/widget/ShareDialog;
    .param p2, "x1"    # Lcom/facebook/share/widget/ShareDialog$1;

    .prologue
    .line 320
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/ShareDialog$NativeHandler;-><init>(Lcom/facebook/share/widget/ShareDialog;)V

    return-void
.end method


# virtual methods
.method public canShow(Lcom/facebook/share/model/ShareContent;Z)Z
    .locals 3
    .param p1, "content"    # Lcom/facebook/share/model/ShareContent;
    .param p2, "isBestEffort"    # Z

    .prologue
    const/4 v2, 0x0

    .line 328
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/facebook/share/model/ShareCameraEffectContent;

    if-nez v1, :cond_0

    instance-of v1, p1, Lcom/facebook/share/model/ShareStoryContent;

    if-eqz v1, :cond_1

    :cond_0
    move v1, v2

    .line 350
    :goto_0
    return v1

    .line 333
    :cond_1
    const/4 v0, 0x1

    .line 334
    .local v0, "canShowResult":Z
    if-nez p2, :cond_3

    .line 340
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareContent;->getShareHashtag()Lcom/facebook/share/model/ShareHashtag;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 341
    sget-object v1, Lcom/facebook/share/internal/ShareDialogFeature;->HASHTAG:Lcom/facebook/share/internal/ShareDialogFeature;

    invoke-static {v1}, Lcom/facebook/internal/DialogPresenter;->canPresentNativeDialogWithFeature(Lcom/facebook/internal/DialogFeature;)Z

    move-result v0

    .line 344
    :cond_2
    instance-of v1, p1, Lcom/facebook/share/model/ShareLinkContent;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Lcom/facebook/share/model/ShareLinkContent;

    .line 345
    invoke-virtual {v1}, Lcom/facebook/share/model/ShareLinkContent;->getQuote()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 346
    sget-object v1, Lcom/facebook/share/internal/ShareDialogFeature;->LINK_SHARE_QUOTES:Lcom/facebook/share/internal/ShareDialogFeature;

    invoke-static {v1}, Lcom/facebook/internal/DialogPresenter;->canPresentNativeDialogWithFeature(Lcom/facebook/internal/DialogFeature;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 350
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/share/widget/ShareDialog;->access$500(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic canShow(Ljava/lang/Object;Z)Z
    .locals 1

    .prologue
    .line 320
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/share/widget/ShareDialog$NativeHandler;->canShow(Lcom/facebook/share/model/ShareContent;Z)Z

    move-result v0

    return v0
.end method

.method public createAppCall(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/internal/AppCall;
    .locals 5
    .param p1, "content"    # Lcom/facebook/share/model/ShareContent;

    .prologue
    .line 355
    iget-object v2, p0, Lcom/facebook/share/widget/ShareDialog$NativeHandler;->this$0:Lcom/facebook/share/widget/ShareDialog;

    iget-object v3, p0, Lcom/facebook/share/widget/ShareDialog$NativeHandler;->this$0:Lcom/facebook/share/widget/ShareDialog;

    invoke-static {v3}, Lcom/facebook/share/widget/ShareDialog;->access$600(Lcom/facebook/share/widget/ShareDialog;)Landroid/app/Activity;

    move-result-object v3

    sget-object v4, Lcom/facebook/share/widget/ShareDialog$Mode;->NATIVE:Lcom/facebook/share/widget/ShareDialog$Mode;

    invoke-static {v2, v3, p1, v4}, Lcom/facebook/share/widget/ShareDialog;->access$700(Lcom/facebook/share/widget/ShareDialog;Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)V

    .line 357
    invoke-static {p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateForNativeShare(Lcom/facebook/share/model/ShareContent;)V

    .line 359
    iget-object v2, p0, Lcom/facebook/share/widget/ShareDialog$NativeHandler;->this$0:Lcom/facebook/share/widget/ShareDialog;

    invoke-virtual {v2}, Lcom/facebook/share/widget/ShareDialog;->createBaseAppCall()Lcom/facebook/internal/AppCall;

    move-result-object v0

    .line 360
    .local v0, "appCall":Lcom/facebook/internal/AppCall;
    iget-object v2, p0, Lcom/facebook/share/widget/ShareDialog$NativeHandler;->this$0:Lcom/facebook/share/widget/ShareDialog;

    invoke-virtual {v2}, Lcom/facebook/share/widget/ShareDialog;->getShouldFailOnDataError()Z

    move-result v1

    .line 362
    .local v1, "shouldFailOnDataError":Z
    new-instance v2, Lcom/facebook/share/widget/ShareDialog$NativeHandler$1;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/facebook/share/widget/ShareDialog$NativeHandler$1;-><init>(Lcom/facebook/share/widget/ShareDialog$NativeHandler;Lcom/facebook/internal/AppCall;Lcom/facebook/share/model/ShareContent;Z)V

    .line 381
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/share/widget/ShareDialog;->access$800(Ljava/lang/Class;)Lcom/facebook/internal/DialogFeature;

    move-result-object v3

    .line 362
    invoke-static {v0, v2, v3}, Lcom/facebook/internal/DialogPresenter;->setupAppCallForNativeDialog(Lcom/facebook/internal/AppCall;Lcom/facebook/internal/DialogPresenter$ParameterProvider;Lcom/facebook/internal/DialogFeature;)V

    .line 383
    return-object v0
.end method

.method public bridge synthetic createAppCall(Ljava/lang/Object;)Lcom/facebook/internal/AppCall;
    .locals 1

    .prologue
    .line 320
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/ShareDialog$NativeHandler;->createAppCall(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/internal/AppCall;

    move-result-object v0

    return-object v0
.end method

.method public getMode()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 323
    sget-object v0, Lcom/facebook/share/widget/ShareDialog$Mode;->NATIVE:Lcom/facebook/share/widget/ShareDialog$Mode;

    return-object v0
.end method
