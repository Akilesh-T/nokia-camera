.class public final Lcom/facebook/share/widget/MessageDialog;
.super Lcom/facebook/internal/FacebookDialogBase;
.source "MessageDialog.java"

# interfaces
.implements Lcom/facebook/share/Sharer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/widget/MessageDialog$NativeHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase",
        "<",
        "Lcom/facebook/share/model/ShareContent;",
        "Lcom/facebook/share/Sharer$Result;",
        ">;",
        "Lcom/facebook/share/Sharer;"
    }
.end annotation


# static fields
.field private static final DEFAULT_REQUEST_CODE:I


# instance fields
.field private shouldFailOnDataError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Message:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 70
    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    sput v0, Lcom/facebook/share/widget/MessageDialog;->DEFAULT_REQUEST_CODE:I

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 138
    sget v0, Lcom/facebook/share/widget/MessageDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Landroid/app/Activity;I)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/share/widget/MessageDialog;->shouldFailOnDataError:Z

    .line 140
    sget v0, Lcom/facebook/share/widget/MessageDialog;->DEFAULT_REQUEST_CODE:I

    invoke-static {v0}, Lcom/facebook/share/internal/ShareInternalUtility;->registerStaticShareCallback(I)V

    .line 141
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I

    .prologue
    .line 168
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Landroid/app/Activity;I)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/share/widget/MessageDialog;->shouldFailOnDataError:Z

    .line 170
    invoke-static {p2}, Lcom/facebook/share/internal/ShareInternalUtility;->registerStaticShareCallback(I)V

    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 157
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0}, Lcom/facebook/share/widget/MessageDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    .line 158
    return-void
.end method

.method constructor <init>(Landroid/app/Fragment;I)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "requestCode"    # I

    .prologue
    .line 180
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/share/widget/MessageDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;I)V

    .line 181
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 148
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0}, Lcom/facebook/share/widget/MessageDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    .line 150
    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/Fragment;I)V
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "requestCode"    # I

    .prologue
    .line 175
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/share/widget/MessageDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;I)V

    .line 177
    return-void
.end method

.method private constructor <init>(Lcom/facebook/internal/FragmentWrapper;)V
    .locals 1
    .param p1, "fragmentWrapper"    # Lcom/facebook/internal/FragmentWrapper;

    .prologue
    .line 161
    sget v0, Lcom/facebook/share/widget/MessageDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Lcom/facebook/internal/FragmentWrapper;I)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/share/widget/MessageDialog;->shouldFailOnDataError:Z

    .line 163
    sget v0, Lcom/facebook/share/widget/MessageDialog;->DEFAULT_REQUEST_CODE:I

    invoke-static {v0}, Lcom/facebook/share/internal/ShareInternalUtility;->registerStaticShareCallback(I)V

    .line 164
    return-void
.end method

.method private constructor <init>(Lcom/facebook/internal/FragmentWrapper;I)V
    .locals 1
    .param p1, "fragmentWrapper"    # Lcom/facebook/internal/FragmentWrapper;
    .param p2, "requestCode"    # I

    .prologue
    .line 184
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Lcom/facebook/internal/FragmentWrapper;I)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/share/widget/MessageDialog;->shouldFailOnDataError:Z

    .line 186
    invoke-static {p2}, Lcom/facebook/share/internal/ShareInternalUtility;->registerStaticShareCallback(I)V

    .line 187
    return-void
.end method

.method static synthetic access$100(Lcom/facebook/share/widget/MessageDialog;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/share/widget/MessageDialog;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/facebook/share/widget/MessageDialog;->getActivityContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lcom/facebook/internal/AppCall;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/facebook/share/model/ShareContent;
    .param p2, "x2"    # Lcom/facebook/internal/AppCall;

    .prologue
    .line 65
    invoke-static {p0, p1, p2}, Lcom/facebook/share/widget/MessageDialog;->logDialogShare(Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lcom/facebook/internal/AppCall;)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/Class;)Lcom/facebook/internal/DialogFeature;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Class;

    .prologue
    .line 65
    invoke-static {p0}, Lcom/facebook/share/widget/MessageDialog;->getFeature(Ljava/lang/Class;)Lcom/facebook/internal/DialogFeature;

    move-result-object v0

    return-object v0
.end method

.method public static canShow(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/share/model/ShareContent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "contentType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/facebook/share/model/ShareContent;>;"
    invoke-static {p0}, Lcom/facebook/share/widget/MessageDialog;->getFeature(Ljava/lang/Class;)Lcom/facebook/internal/DialogFeature;

    move-result-object v0

    .line 130
    .local v0, "feature":Lcom/facebook/internal/DialogFeature;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/facebook/internal/DialogPresenter;->canPresentNativeDialogWithFeature(Lcom/facebook/internal/DialogFeature;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getFeature(Ljava/lang/Class;)Lcom/facebook/internal/DialogFeature;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/share/model/ShareContent;",
            ">;)",
            "Lcom/facebook/internal/DialogFeature;"
        }
    .end annotation

    .prologue
    .line 262
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/facebook/share/model/ShareContent;>;"
    const-class v0, Lcom/facebook/share/model/ShareLinkContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    sget-object v0, Lcom/facebook/share/internal/MessageDialogFeature;->MESSAGE_DIALOG:Lcom/facebook/share/internal/MessageDialogFeature;

    .line 271
    :goto_0
    return-object v0

    .line 264
    :cond_0
    const-class v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    sget-object v0, Lcom/facebook/share/internal/MessageDialogFeature;->MESSENGER_GENERIC_TEMPLATE:Lcom/facebook/share/internal/MessageDialogFeature;

    goto :goto_0

    .line 266
    :cond_1
    const-class v0, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    sget-object v0, Lcom/facebook/share/internal/MessageDialogFeature;->MESSENGER_OPEN_GRAPH_MUSIC_TEMPLATE:Lcom/facebook/share/internal/MessageDialogFeature;

    goto :goto_0

    .line 268
    :cond_2
    const-class v0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 269
    sget-object v0, Lcom/facebook/share/internal/MessageDialogFeature;->MESSENGER_MEDIA_TEMPLATE:Lcom/facebook/share/internal/MessageDialogFeature;

    goto :goto_0

    .line 271
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static logDialogShare(Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lcom/facebook/internal/AppCall;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "content"    # Lcom/facebook/share/model/ShareContent;
    .param p2, "appCall"    # Lcom/facebook/internal/AppCall;

    .prologue
    .line 276
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/share/widget/MessageDialog;->getFeature(Ljava/lang/Class;)Lcom/facebook/internal/DialogFeature;

    move-result-object v1

    .line 277
    .local v1, "dialogFeature":Lcom/facebook/internal/DialogFeature;
    sget-object v4, Lcom/facebook/share/internal/MessageDialogFeature;->MESSAGE_DIALOG:Lcom/facebook/share/internal/MessageDialogFeature;

    if-ne v1, v4, :cond_0

    .line 278
    const-string v0, "status"

    .line 289
    .local v0, "contentType":Ljava/lang/String;
    :goto_0
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v2

    .line 290
    .local v2, "logger":Lcom/facebook/appevents/AppEventsLogger;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 291
    .local v3, "parameters":Landroid/os/Bundle;
    const-string v4, "fb_share_dialog_content_type"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v4, "fb_share_dialog_content_uuid"

    .line 296
    invoke-virtual {p2}, Lcom/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 294
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v4, "fb_share_dialog_content_page_id"

    .line 299
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareContent;->getPageId()Ljava/lang/String;

    move-result-object v5

    .line 297
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v4, "fb_messenger_share_dialog_show"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 302
    return-void

    .line 279
    .end local v0    # "contentType":Ljava/lang/String;
    .end local v2    # "logger":Lcom/facebook/appevents/AppEventsLogger;
    .end local v3    # "parameters":Landroid/os/Bundle;
    :cond_0
    sget-object v4, Lcom/facebook/share/internal/MessageDialogFeature;->MESSENGER_GENERIC_TEMPLATE:Lcom/facebook/share/internal/MessageDialogFeature;

    if-ne v1, v4, :cond_1

    .line 280
    const-string v0, "GenericTemplate"

    .restart local v0    # "contentType":Ljava/lang/String;
    goto :goto_0

    .line 281
    .end local v0    # "contentType":Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/facebook/share/internal/MessageDialogFeature;->MESSENGER_MEDIA_TEMPLATE:Lcom/facebook/share/internal/MessageDialogFeature;

    if-ne v1, v4, :cond_2

    .line 282
    const-string v0, "MediaTemplate"

    .restart local v0    # "contentType":Ljava/lang/String;
    goto :goto_0

    .line 283
    .end local v0    # "contentType":Ljava/lang/String;
    :cond_2
    sget-object v4, Lcom/facebook/share/internal/MessageDialogFeature;->MESSENGER_OPEN_GRAPH_MUSIC_TEMPLATE:Lcom/facebook/share/internal/MessageDialogFeature;

    if-ne v1, v4, :cond_3

    .line 284
    const-string v0, "OpenGraphMusicTemplate"

    .restart local v0    # "contentType":Ljava/lang/String;
    goto :goto_0

    .line 286
    .end local v0    # "contentType":Ljava/lang/String;
    :cond_3
    const-string v0, "unknown"

    .restart local v0    # "contentType":Ljava/lang/String;
    goto :goto_0
.end method

.method public static show(Landroid/app/Activity;Lcom/facebook/share/model/ShareContent;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "shareContent"    # Lcom/facebook/share/model/ShareContent;

    .prologue
    .line 84
    new-instance v0, Lcom/facebook/share/widget/MessageDialog;

    invoke-direct {v0, p0}, Lcom/facebook/share/widget/MessageDialog;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Lcom/facebook/share/widget/MessageDialog;->show(Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public static show(Landroid/app/Fragment;Lcom/facebook/share/model/ShareContent;)V
    .locals 1
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p1, "shareContent"    # Lcom/facebook/share/model/ShareContent;

    .prologue
    .line 110
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p0}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-static {v0, p1}, Lcom/facebook/share/widget/MessageDialog;->show(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/share/model/ShareContent;)V

    .line 111
    return-void
.end method

.method public static show(Landroid/support/v4/app/Fragment;Lcom/facebook/share/model/ShareContent;)V
    .locals 1
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "shareContent"    # Lcom/facebook/share/model/ShareContent;

    .prologue
    .line 97
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p0}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-static {v0, p1}, Lcom/facebook/share/widget/MessageDialog;->show(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/share/model/ShareContent;)V

    .line 98
    return-void
.end method

.method private static show(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/share/model/ShareContent;)V
    .locals 1
    .param p0, "fragmentWrapper"    # Lcom/facebook/internal/FragmentWrapper;
    .param p1, "shareContent"    # Lcom/facebook/share/model/ShareContent;

    .prologue
    .line 116
    new-instance v0, Lcom/facebook/share/widget/MessageDialog;

    invoke-direct {v0, p0}, Lcom/facebook/share/widget/MessageDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    invoke-virtual {v0, p1}, Lcom/facebook/share/widget/MessageDialog;->show(Ljava/lang/Object;)V

    .line 117
    return-void
.end method


# virtual methods
.method protected createBaseAppCall()Lcom/facebook/internal/AppCall;
    .locals 2

    .prologue
    .line 208
    new-instance v0, Lcom/facebook/internal/AppCall;

    invoke-virtual {p0}, Lcom/facebook/share/widget/MessageDialog;->getRequestCode()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/internal/AppCall;-><init>(I)V

    return-object v0
.end method

.method protected getOrderedModeHandlers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/FacebookDialogBase",
            "<",
            "Lcom/facebook/share/model/ShareContent;",
            "Lcom/facebook/share/Sharer$Result;",
            ">.ModeHandler;>;"
        }
    .end annotation

    .prologue
    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v0, "handlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/internal/FacebookDialogBase<Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/Sharer$Result;>.ModeHandler;>;"
    new-instance v1, Lcom/facebook/share/widget/MessageDialog$NativeHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/share/widget/MessageDialog$NativeHandler;-><init>(Lcom/facebook/share/widget/MessageDialog;Lcom/facebook/share/widget/MessageDialog$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    return-object v0
.end method

.method public getShouldFailOnDataError()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/facebook/share/widget/MessageDialog;->shouldFailOnDataError:Z

    return v0
.end method

.method protected registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V
    .locals 1
    .param p1, "callbackManager"    # Lcom/facebook/internal/CallbackManagerImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/CallbackManagerImpl;",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p2, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    invoke-virtual {p0}, Lcom/facebook/share/widget/MessageDialog;->getRequestCode()I

    move-result v0

    invoke-static {v0, p1, p2}, Lcom/facebook/share/internal/ShareInternalUtility;->registerSharerCallback(ILcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 194
    return-void
.end method

.method public setShouldFailOnDataError(Z)V
    .locals 0
    .param p1, "shouldFailOnDataError"    # Z

    .prologue
    .line 203
    iput-boolean p1, p0, Lcom/facebook/share/widget/MessageDialog;->shouldFailOnDataError:Z

    .line 204
    return-void
.end method
