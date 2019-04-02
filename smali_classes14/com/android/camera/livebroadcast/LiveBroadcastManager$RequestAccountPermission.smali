.class public Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;
.super Ljava/lang/Object;
.source "LiveBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/livebroadcast/LiveBroadcastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestAccountPermission"
.end annotation


# instance fields
.field private final mAccountType:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

.field private final mActivity:Landroid/app/Activity;

.field private final mLoginCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

.field private final mPermissionCheck:Lcom/android/camera/util/PermissionUtil$PermissionCheck;

.field private final mRequestAccountPicker:I

.field final synthetic this$0:Lcom/android/camera/livebroadcast/LiveBroadcastManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/livebroadcast/LiveBroadcastManager;Lcom/android/camera/util/PermissionUtil$PermissionCode;Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;ILcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager;
    .param p2, "permissionCode"    # Lcom/android/camera/util/PermissionUtil$PermissionCode;
    .param p3, "activity"    # Landroid/app/Activity;
    .param p4, "type"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;
    .param p5, "requestAccountPicker"    # I
    .param p6, "loginCallback"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;->this$0:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    new-instance v0, Lcom/android/camera/util/PermissionUtil$PermissionCheck;

    const-string v1, "android.permission.GET_ACCOUNTS"

    const v2, 0x7f080129

    invoke-direct {v0, p3, p2, v1, v2}, Lcom/android/camera/util/PermissionUtil$PermissionCheck;-><init>(Ljava/lang/Object;Lcom/android/camera/util/PermissionUtil$PermissionCode;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;->mPermissionCheck:Lcom/android/camera/util/PermissionUtil$PermissionCheck;

    .line 331
    iput-object p3, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;->mActivity:Landroid/app/Activity;

    .line 332
    iput-object p4, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;->mAccountType:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    .line 333
    iput-object p6, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;->mLoginCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    .line 334
    iput p5, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;->mRequestAccountPicker:I

    .line 335
    return-void
.end method

.method private chooseAccount(Ljava/lang/String;)Z
    .locals 4
    .param p1, "functionName"    # Ljava/lang/String;

    .prologue
    .line 351
    invoke-static {}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chooseAccount from : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 352
    iget-object v1, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;->this$0:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;->mAccountType:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-static {v1, v2}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->access$100(Lcom/android/camera/livebroadcast/LiveBroadcastManager;Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Lcom/android/camera/livebroadcast/AccountAgent;

    move-result-object v0

    .line 353
    .local v0, "accountAgent":Lcom/android/camera/livebroadcast/AccountAgent;
    if-eqz v0, :cond_0

    .line 354
    iget-object v1, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;->mRequestAccountPicker:I

    iget-object v3, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;->mLoginCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/livebroadcast/AccountAgent;->chooseAccount(Landroid/app/Activity;ILcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)V

    .line 356
    :cond_0
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 369
    iget v1, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;->mRequestAccountPicker:I

    if-ne v1, p1, :cond_2

    .line 370
    iget-object v1, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;->this$0:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;->mAccountType:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-static {v1, v3}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->access$100(Lcom/android/camera/livebroadcast/LiveBroadcastManager;Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Lcom/android/camera/livebroadcast/AccountAgent;

    move-result-object v0

    .line 371
    .local v0, "accountAgent":Lcom/android/camera/livebroadcast/AccountAgent;
    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/livebroadcast/AccountAgent;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 372
    iget-object v3, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;->mLoginCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    iget-object v4, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;->mAccountType:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v3, v4, v1}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;->onLoginResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Z)V

    .line 381
    .end local v0    # "accountAgent":Lcom/android/camera/livebroadcast/AccountAgent;
    :goto_1
    return v2

    .restart local v0    # "accountAgent":Lcom/android/camera/livebroadcast/AccountAgent;
    :cond_0
    move v1, v2

    .line 372
    goto :goto_0

    .line 374
    :cond_1
    iget-object v1, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;->mLoginCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;->mAccountType:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-interface {v1, v3, v2}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;->onLoginResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Z)V

    goto :goto_1

    .line 376
    .end local v0    # "accountAgent":Lcom/android/camera/livebroadcast/AccountAgent;
    :cond_2
    iget-object v1, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;->mPermissionCheck:Lcom/android/camera/util/PermissionUtil$PermissionCheck;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 377
    const-string v1, "onActivityResult()"

    invoke-direct {p0, v1}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;->chooseAccount(Ljava/lang/String;)Z

    goto :goto_1

    .line 379
    :cond_3
    iget-object v1, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;->mLoginCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    iget-object v3, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;->mAccountType:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-interface {v1, v3, v2}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;->onLoginResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Z)V

    goto :goto_1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v0, 0x0

    .line 360
    iget-object v1, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;->mPermissionCheck:Lcom/android/camera/util/PermissionUtil$PermissionCheck;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->onRequestPermissionsResult(I[Ljava/lang/String;[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    const-string v0, "onRequestPermissionsResult()"

    invoke-direct {p0, v0}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;->chooseAccount(Ljava/lang/String;)Z

    move-result v0

    .line 364
    :goto_0
    return v0

    .line 363
    :cond_0
    iget-object v1, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;->mLoginCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;->mAccountType:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-interface {v1, v2, v0}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;->onLoginResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Z)V

    goto :goto_0
.end method

.method public permissionCheck()V
    .locals 4

    .prologue
    .line 338
    iget-object v1, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;->this$0:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->access$000(Lcom/android/camera/livebroadcast/LiveBroadcastManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.GET_ACCOUNTS"

    invoke-static {v1, v2}, Lcom/android/camera/util/PermissionUtil;->checkSinglePermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 339
    iget-object v1, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;->this$0:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    iget-object v2, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;->mAccountType:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-static {v1, v2}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->access$100(Lcom/android/camera/livebroadcast/LiveBroadcastManager;Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Lcom/android/camera/livebroadcast/AccountAgent;

    move-result-object v0

    .line 340
    .local v0, "accountAgent":Lcom/android/camera/livebroadcast/AccountAgent;
    if-eqz v0, :cond_0

    .line 341
    iget-object v1, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;->mRequestAccountPicker:I

    iget-object v3, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;->mLoginCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/livebroadcast/AccountAgent;->chooseAccount(Landroid/app/Activity;ILcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)V

    .line 348
    .end local v0    # "accountAgent":Lcom/android/camera/livebroadcast/AccountAgent;
    :goto_0
    return-void

    .line 343
    .restart local v0    # "accountAgent":Lcom/android/camera/livebroadcast/AccountAgent;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "permissionCheck error : AccountAgent is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 346
    .end local v0    # "accountAgent":Lcom/android/camera/livebroadcast/AccountAgent;
    :cond_1
    iget-object v1, p0, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;->mPermissionCheck:Lcom/android/camera/util/PermissionUtil$PermissionCheck;

    invoke-virtual {v1}, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->permissionCheck()V

    goto :goto_0
.end method
