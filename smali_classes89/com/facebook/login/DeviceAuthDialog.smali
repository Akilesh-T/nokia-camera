.class public Lcom/facebook/login/DeviceAuthDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "DeviceAuthDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/DeviceAuthDialog$RequestState;
    }
.end annotation


# static fields
.field private static final DEVICE_LOGIN_ENDPOINT:Ljava/lang/String; = "device/login"

.field private static final DEVICE_LOGIN_STATUS_ENDPOINT:Ljava/lang/String; = "device/login_status"

.field private static final LOGIN_ERROR_SUBCODE_AUTHORIZATION_DECLINED:I = 0x149635

.field private static final LOGIN_ERROR_SUBCODE_AUTHORIZATION_PENDING:I = 0x149636

.field private static final LOGIN_ERROR_SUBCODE_CODE_EXPIRED:I = 0x149620

.field private static final LOGIN_ERROR_SUBCODE_EXCESSIVE_POLLING:I = 0x149634

.field private static final REQUEST_STATE_KEY:Ljava/lang/String; = "request_state"


# instance fields
.field private completed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private confirmationCode:Landroid/widget/TextView;

.field private volatile currentGraphRequestPoll:Lcom/facebook/GraphRequestAsyncTask;

.field private volatile currentRequestState:Lcom/facebook/login/DeviceAuthDialog$RequestState;

.field private deviceAuthMethodHandler:Lcom/facebook/login/DeviceAuthMethodHandler;

.field private dialog:Landroid/app/Dialog;

.field private instructions:Landroid/widget/TextView;

.field private isBeingDestroyed:Z

.field private isRetry:Z

.field private mRequest:Lcom/facebook/login/LoginClient$Request;

.field private progressBar:Landroid/view/View;

.field private volatile scheduledPoll:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 93
    iput-boolean v1, p0, Lcom/facebook/login/DeviceAuthDialog;->isBeingDestroyed:Z

    .line 94
    iput-boolean v1, p0, Lcom/facebook/login/DeviceAuthDialog;->isRetry:Z

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->mRequest:Lcom/facebook/login/LoginClient$Request;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/login/DeviceAuthDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/facebook/login/DeviceAuthDialog;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/facebook/login/DeviceAuthDialog;->isBeingDestroyed:Z

    return v0
.end method

.method static synthetic access$100(Lcom/facebook/login/DeviceAuthDialog;Lcom/facebook/login/DeviceAuthDialog$RequestState;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/login/DeviceAuthDialog;
    .param p1, "x1"    # Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/facebook/login/DeviceAuthDialog;->setCurrentRequestState(Lcom/facebook/login/DeviceAuthDialog$RequestState;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/facebook/login/DeviceAuthDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/facebook/login/DeviceAuthDialog;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/facebook/login/DeviceAuthDialog;->isRetry:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/facebook/login/DeviceAuthDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/facebook/login/DeviceAuthDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/facebook/login/DeviceAuthDialog;->isRetry:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lcom/facebook/internal/Utility$PermissionsPair;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/login/DeviceAuthDialog;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/facebook/internal/Utility$PermissionsPair;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/util/Date;
    .param p6, "x6"    # Ljava/util/Date;

    .prologue
    .line 71
    invoke-direct/range {p0 .. p6}, Lcom/facebook/login/DeviceAuthDialog;->presentConfirmation(Ljava/lang/String;Lcom/facebook/internal/Utility$PermissionsPair;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/login/DeviceAuthDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/login/DeviceAuthDialog;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->poll()V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/login/DeviceAuthDialog;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/login/DeviceAuthDialog;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/facebook/login/DeviceAuthDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/login/DeviceAuthDialog;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->schedulePoll()V

    return-void
.end method

.method static synthetic access$500(Lcom/facebook/login/DeviceAuthDialog;)Lcom/facebook/login/DeviceAuthDialog$RequestState;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/login/DeviceAuthDialog;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->currentRequestState:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    return-object v0
.end method

.method static synthetic access$600(Lcom/facebook/login/DeviceAuthDialog;)Lcom/facebook/login/LoginClient$Request;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/login/DeviceAuthDialog;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->mRequest:Lcom/facebook/login/LoginClient$Request;

    return-object v0
.end method

.method static synthetic access$700(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/login/DeviceAuthDialog;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Long;
    .param p3, "x3"    # Ljava/lang/Long;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/login/DeviceAuthDialog;->onSuccess(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$800(Lcom/facebook/login/DeviceAuthDialog;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/login/DeviceAuthDialog;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lcom/facebook/internal/Utility$PermissionsPair;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/login/DeviceAuthDialog;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/facebook/internal/Utility$PermissionsPair;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/util/Date;
    .param p5, "x5"    # Ljava/util/Date;

    .prologue
    .line 71
    invoke-direct/range {p0 .. p5}, Lcom/facebook/login/DeviceAuthDialog;->completeLogin(Ljava/lang/String;Lcom/facebook/internal/Utility$PermissionsPair;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    return-void
.end method

.method private completeLogin(Ljava/lang/String;Lcom/facebook/internal/Utility$PermissionsPair;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 10
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "permissions"    # Lcom/facebook/internal/Utility$PermissionsPair;
    .param p3, "accessToken"    # Ljava/lang/String;
    .param p4, "expirationTime"    # Ljava/util/Date;
    .param p5, "dataAccessExpirationTime"    # Ljava/util/Date;

    .prologue
    .line 474
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->deviceAuthMethodHandler:Lcom/facebook/login/DeviceAuthMethodHandler;

    .line 476
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    .line 478
    invoke-virtual {p2}, Lcom/facebook/internal/Utility$PermissionsPair;->getGrantedPermissions()Ljava/util/List;

    move-result-object v4

    .line 479
    invoke-virtual {p2}, Lcom/facebook/internal/Utility$PermissionsPair;->getDeclinedPermissions()Ljava/util/List;

    move-result-object v5

    sget-object v6, Lcom/facebook/AccessTokenSource;->DEVICE_AUTH:Lcom/facebook/AccessTokenSource;

    const/4 v8, 0x0

    move-object v1, p3

    move-object v3, p1

    move-object v7, p4

    move-object v9, p5

    .line 474
    invoke-virtual/range {v0 .. v9}, Lcom/facebook/login/DeviceAuthMethodHandler;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V

    .line 484
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 485
    return-void
.end method

.method private getPollRequest()Lcom/facebook/GraphRequest;
    .locals 6

    .prologue
    .line 289
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 290
    .local v3, "parameters":Landroid/os/Bundle;
    const-string v0, "code"

    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->currentRequestState:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    invoke-virtual {v1}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->getRequestCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    new-instance v0, Lcom/facebook/GraphRequest;

    const/4 v1, 0x0

    const-string v2, "device/login_status"

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    new-instance v5, Lcom/facebook/login/DeviceAuthDialog$4;

    invoke-direct {v5, p0}, Lcom/facebook/login/DeviceAuthDialog$4;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object v0
.end method

.method private onSuccess(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 14
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "expiresIn"    # Ljava/lang/Long;
    .param p3, "dataAccessExpirationTime"    # Ljava/lang/Long;

    .prologue
    .line 388
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 389
    .local v10, "parameters":Landroid/os/Bundle;
    const-string v2, "fields"

    const-string v3, "id,permissions,name"

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    new-instance v7, Ljava/util/Date;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 391
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v12, 0x3e8

    mul-long/2addr v4, v12

    add-long/2addr v2, v4

    invoke-direct {v7, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 394
    .local v7, "expirationTime":Ljava/util/Date;
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    if-eqz p3, :cond_1

    new-instance v9, Ljava/util/Date;

    .line 395
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v9, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 399
    .local v9, "dataAccessExpirationTimeDate":Ljava/util/Date;
    :goto_1
    new-instance v0, Lcom/facebook/AccessToken;

    .line 401
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V

    .line 410
    .local v0, "temporaryToken":Lcom/facebook/AccessToken;
    new-instance v1, Lcom/facebook/GraphRequest;

    const-string v3, "me"

    sget-object v5, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    new-instance v6, Lcom/facebook/login/DeviceAuthDialog$7;

    invoke-direct {v6, p0, p1, v7, v9}, Lcom/facebook/login/DeviceAuthDialog$7;-><init>(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    move-object v2, v0

    move-object v4, v10

    invoke-direct/range {v1 .. v6}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 466
    .local v1, "request":Lcom/facebook/GraphRequest;
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 467
    return-void

    .line 391
    .end local v0    # "temporaryToken":Lcom/facebook/AccessToken;
    .end local v1    # "request":Lcom/facebook/GraphRequest;
    .end local v7    # "expirationTime":Ljava/util/Date;
    .end local v9    # "dataAccessExpirationTimeDate":Ljava/util/Date;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 395
    .restart local v7    # "expirationTime":Ljava/util/Date;
    :cond_1
    const/4 v9, 0x0

    goto :goto_1
.end method

.method private poll()V
    .locals 4

    .prologue
    .line 272
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->currentRequestState:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->setLastPoll(J)V

    .line 273
    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->getPollRequest()Lcom/facebook/GraphRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->currentGraphRequestPoll:Lcom/facebook/GraphRequestAsyncTask;

    .line 274
    return-void
.end method

.method private presentConfirmation(Ljava/lang/String;Lcom/facebook/internal/Utility$PermissionsPair;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 13
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "permissions"    # Lcom/facebook/internal/Utility$PermissionsPair;
    .param p3, "accessToken"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "expirationTime"    # Ljava/util/Date;
    .param p6, "dataAccessExpirationTime"    # Ljava/util/Date;

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/common/R$string;->com_facebook_smart_login_confirmation_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 357
    .local v11, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/common/R$string;->com_facebook_smart_login_confirmation_continue_as:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 359
    .local v9, "continueFormat":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/common/R$string;->com_facebook_smart_login_confirmation_cancel:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 361
    .local v8, "cancel":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p4, v0, v1

    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 362
    .local v10, "continueText":Ljava/lang/String;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 363
    .local v7, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v7, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 364
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    new-instance v0, Lcom/facebook/login/DeviceAuthDialog$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/login/DeviceAuthDialog$6;-><init>(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lcom/facebook/internal/Utility$PermissionsPair;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    .line 365
    invoke-virtual {v12, v10, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/facebook/login/DeviceAuthDialog$5;

    invoke-direct {v1, p0}, Lcom/facebook/login/DeviceAuthDialog$5;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    .line 375
    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 382
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 383
    return-void
.end method

.method private schedulePoll()V
    .locals 5

    .prologue
    .line 277
    invoke-static {}, Lcom/facebook/login/DeviceAuthMethodHandler;->getBackgroundExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/facebook/login/DeviceAuthDialog$3;

    invoke-direct {v1, p0}, Lcom/facebook/login/DeviceAuthDialog$3;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    iget-object v2, p0, Lcom/facebook/login/DeviceAuthDialog;->currentRequestState:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .line 284
    invoke-virtual {v2}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->getInterval()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 277
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->scheduledPoll:Ljava/util/concurrent/ScheduledFuture;

    .line 286
    return-void
.end method

.method private setCurrentRequestState(Lcom/facebook/login/DeviceAuthDialog$RequestState;)V
    .locals 6
    .param p1, "currentRequestState"    # Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .prologue
    const/4 v5, 0x0

    .line 218
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog;->currentRequestState:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .line 219
    iget-object v3, p0, Lcom/facebook/login/DeviceAuthDialog;->confirmationCode:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->getUserCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    invoke-virtual {p1}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->getAuthorizationUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->generateQRCode(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 222
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 223
    .local v2, "qrCode":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v3, p0, Lcom/facebook/login/DeviceAuthDialog;->instructions:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v2, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 224
    iget-object v3, p0, Lcom/facebook/login/DeviceAuthDialog;->confirmationCode:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    iget-object v3, p0, Lcom/facebook/login/DeviceAuthDialog;->progressBar:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 227
    iget-boolean v3, p0, Lcom/facebook/login/DeviceAuthDialog;->isRetry:Z

    if-nez v3, :cond_0

    .line 228
    invoke-virtual {p1}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->getUserCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->startAdvertisementService(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v1

    .line 230
    .local v1, "logger":Lcom/facebook/appevents/AppEventsLogger;
    const-string v3, "fb_smart_login_service"

    invoke-virtual {v1, v3, v5, v5}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 235
    .end local v1    # "logger":Lcom/facebook/appevents/AppEventsLogger;
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->withinLastRefreshWindow()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 236
    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->schedulePoll()V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_1
    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->poll()V

    goto :goto_0
.end method


# virtual methods
.method protected getLayoutResId(Z)I
    .locals 1
    .param p1, "isSmartLogin"    # Z
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    .prologue
    .line 266
    if-eqz p1, :cond_0

    sget v0, Lcom/facebook/common/R$layout;->com_facebook_smart_device_dialog_fragment:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/facebook/common/R$layout;->com_facebook_device_auth_dialog_fragment:I

    goto :goto_0
.end method

.method protected initializeContentView(Z)Landroid/view/View;
    .locals 5
    .param p1, "isSmartLogin"    # Z

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 245
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0, p1}, Lcom/facebook/login/DeviceAuthDialog;->getLayoutResId(Z)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 246
    .local v2, "view":Landroid/view/View;
    sget v3, Lcom/facebook/common/R$id;->progress_bar:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/login/DeviceAuthDialog;->progressBar:Landroid/view/View;

    .line 247
    sget v3, Lcom/facebook/common/R$id;->confirmation_code:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/facebook/login/DeviceAuthDialog;->confirmationCode:Landroid/widget/TextView;

    .line 249
    sget v3, Lcom/facebook/common/R$id;->cancel_button:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 250
    .local v0, "cancelButton":Landroid/widget/Button;
    new-instance v3, Lcom/facebook/login/DeviceAuthDialog$2;

    invoke-direct {v3, p0}, Lcom/facebook/login/DeviceAuthDialog$2;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    sget v3, Lcom/facebook/common/R$id;->com_facebook_device_auth_instructions:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/facebook/login/DeviceAuthDialog;->instructions:Landroid/widget/TextView;

    .line 259
    iget-object v3, p0, Lcom/facebook/login/DeviceAuthDialog;->instructions:Landroid/widget/TextView;

    sget v4, Lcom/facebook/common/R$string;->com_facebook_device_auth_instructions:I

    .line 260
    invoke-virtual {p0, v4}, Lcom/facebook/login/DeviceAuthDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    .line 259
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    return-object v2
.end method

.method protected onCancel()V
    .locals 3

    .prologue
    .line 500
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 515
    :goto_0
    return-void

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->currentRequestState:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->currentRequestState:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    invoke-virtual {v0}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->getUserCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->cleanUpAdvertisementService(Ljava/lang/String;)V

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->deviceAuthMethodHandler:Lcom/facebook/login/DeviceAuthMethodHandler;

    if-eqz v0, :cond_2

    .line 511
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->deviceAuthMethodHandler:Lcom/facebook/login/DeviceAuthMethodHandler;

    invoke-virtual {v0}, Lcom/facebook/login/DeviceAuthMethodHandler;->onCancel()V

    .line 514
    :cond_2
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 123
    new-instance v1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/facebook/common/R$style;->com_facebook_auth_dialog:I

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->dialog:Landroid/app/Dialog;

    .line 125
    invoke-static {}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/facebook/login/DeviceAuthDialog;->isRetry:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/facebook/login/DeviceAuthDialog;->initializeContentView(Z)Landroid/view/View;

    move-result-object v0

    .line 127
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 128
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->dialog:Landroid/app/Dialog;

    return-object v1

    .line 125
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 103
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v3

    .line 104
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/facebook/FacebookActivity;

    .line 105
    .local v0, "facebookActivity":Lcom/facebook/FacebookActivity;
    invoke-virtual {v0}, Lcom/facebook/FacebookActivity;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/facebook/login/LoginFragment;

    .line 107
    .local v1, "fragment":Lcom/facebook/login/LoginFragment;
    invoke-virtual {v1}, Lcom/facebook/login/LoginFragment;->getLoginClient()Lcom/facebook/login/LoginClient;

    move-result-object v4

    .line 108
    invoke-virtual {v4}, Lcom/facebook/login/LoginClient;->getCurrentHandler()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v4

    check-cast v4, Lcom/facebook/login/DeviceAuthMethodHandler;

    iput-object v4, p0, Lcom/facebook/login/DeviceAuthDialog;->deviceAuthMethodHandler:Lcom/facebook/login/DeviceAuthMethodHandler;

    .line 110
    if-eqz p3, :cond_0

    .line 111
    const-string v4, "request_state"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .line 112
    .local v2, "requestState":Lcom/facebook/login/DeviceAuthDialog$RequestState;
    if-eqz v2, :cond_0

    .line 113
    invoke-direct {p0, v2}, Lcom/facebook/login/DeviceAuthDialog;->setCurrentRequestState(Lcom/facebook/login/DeviceAuthDialog$RequestState;)V

    .line 117
    .end local v2    # "requestState":Lcom/facebook/login/DeviceAuthDialog$RequestState;
    :cond_0
    return-object v3
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 152
    iput-boolean v1, p0, Lcom/facebook/login/DeviceAuthDialog;->isBeingDestroyed:Z

    .line 153
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 154
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroy()V

    .line 155
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->currentGraphRequestPoll:Lcom/facebook/GraphRequestAsyncTask;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->currentGraphRequestPoll:Lcom/facebook/GraphRequestAsyncTask;

    invoke-virtual {v0, v1}, Lcom/facebook/GraphRequestAsyncTask;->cancel(Z)Z

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->scheduledPoll:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->scheduledPoll:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 162
    :cond_1
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 134
    iget-boolean v0, p0, Lcom/facebook/login/DeviceAuthDialog;->isBeingDestroyed:Z

    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->onCancel()V

    .line 137
    :cond_0
    return-void
.end method

.method protected onError(Lcom/facebook/FacebookException;)V
    .locals 3
    .param p1, "ex"    # Lcom/facebook/FacebookException;

    .prologue
    .line 488
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    :goto_0
    return-void

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->currentRequestState:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    if-eqz v0, :cond_1

    .line 493
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->currentRequestState:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    invoke-virtual {v0}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->getUserCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->cleanUpAdvertisementService(Ljava/lang/String;)V

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->deviceAuthMethodHandler:Lcom/facebook/login/DeviceAuthMethodHandler;

    invoke-virtual {v0, p1}, Lcom/facebook/login/DeviceAuthMethodHandler;->onError(Ljava/lang/Exception;)V

    .line 496
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 142
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->currentRequestState:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    if-eqz v0, :cond_0

    .line 143
    const-string v0, "request_state"

    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->currentRequestState:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 145
    :cond_0
    return-void
.end method

.method public startLogin(Lcom/facebook/login/LoginClient$Request;)V
    .locals 9
    .param p1, "request"    # Lcom/facebook/login/LoginClient$Request;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog;->mRequest:Lcom/facebook/login/LoginClient$Request;

    .line 166
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 167
    .local v3, "parameters":Landroid/os/Bundle;
    const-string v1, "scope"

    const-string v2, ","

    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getPermissions()Ljava/util/Set;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getDeviceRedirectUriString()Ljava/lang/String;

    move-result-object v7

    .line 170
    .local v7, "redirectUriString":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 171
    const-string v1, "redirect_uri"

    invoke-virtual {v3, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getDeviceAuthTargetUserId()Ljava/lang/String;

    move-result-object v8

    .line 175
    .local v8, "targetUserId":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 176
    const-string v1, "target_user_id"

    invoke-virtual {v3, v1, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/facebook/internal/Validate;->hasAppID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/facebook/internal/Validate;->hasClientToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 180
    .local v6, "accessToken":Ljava/lang/String;
    const-string v1, "access_token"

    invoke-virtual {v3, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v1, "device_info"

    .line 182
    invoke-static {}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->getDeviceInfo()Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    new-instance v0, Lcom/facebook/GraphRequest;

    const/4 v1, 0x0

    const-string v2, "device/login"

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    new-instance v5, Lcom/facebook/login/DeviceAuthDialog$1;

    invoke-direct {v5, p0}, Lcom/facebook/login/DeviceAuthDialog$1;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 214
    .local v0, "graphRequest":Lcom/facebook/GraphRequest;
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 215
    return-void
.end method
