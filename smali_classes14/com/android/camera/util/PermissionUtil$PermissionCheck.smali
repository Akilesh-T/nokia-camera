.class public Lcom/android/camera/util/PermissionUtil$PermissionCheck;
.super Ljava/lang/Object;
.source "PermissionUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/util/PermissionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionCheck"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mErrorRequestResourceId:I

.field private mPermissionCode:Lcom/android/camera/util/PermissionUtil$PermissionCode;

.field private mRequestPermission:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/android/camera/util/PermissionUtil$PermissionCode;Ljava/lang/String;I)V
    .locals 1
    .param p1, "activityOrFragment"    # Ljava/lang/Object;
    .param p2, "permissionCode"    # Lcom/android/camera/util/PermissionUtil$PermissionCode;
    .param p3, "requestPermission"    # Ljava/lang/String;
    .param p4, "errorRequestResourceId"    # I

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Activity;

    .line 50
    .end local p1    # "activityOrFragment":Ljava/lang/Object;
    :goto_0
    iput-object p1, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->mActivity:Landroid/app/Activity;

    .line 51
    iput-object p2, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->mPermissionCode:Lcom/android/camera/util/PermissionUtil$PermissionCode;

    .line 52
    iput-object p3, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->mRequestPermission:Ljava/lang/String;

    .line 53
    iput p4, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->mErrorRequestResourceId:I

    .line 54
    return-void

    .line 49
    .restart local p1    # "activityOrFragment":Ljava/lang/Object;
    :cond_0
    check-cast p1, Landroid/app/Fragment;

    .line 50
    .end local p1    # "activityOrFragment":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/util/PermissionUtil$PermissionCheck;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/util/PermissionUtil$PermissionCheck;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->mRequestPermission:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/util/PermissionUtil$PermissionCheck;)Lcom/android/camera/util/PermissionUtil$PermissionCode;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/util/PermissionUtil$PermissionCheck;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->mPermissionCode:Lcom/android/camera/util/PermissionUtil$PermissionCode;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/util/PermissionUtil$PermissionCheck;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/util/PermissionUtil$PermissionCheck;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/util/PermissionUtil$PermissionCheck;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/util/PermissionUtil$PermissionCheck;

    .prologue
    .line 41
    iget v0, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->mErrorRequestResourceId:I

    return v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 132
    iget-object v1, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->mPermissionCode:Lcom/android/camera/util/PermissionUtil$PermissionCode;

    invoke-virtual {v1}, Lcom/android/camera/util/PermissionUtil$PermissionCode;->getPermissionRequestCode()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->mRequestPermission:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/camera/util/PermissionUtil;->checkSinglePermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->mActivity:Landroid/app/Activity;

    iget v3, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->mErrorRequestResourceId:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 140
    :cond_0
    :goto_0
    return v0

    .line 137
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 81
    if-eqz p2, :cond_0

    array-length v2, p2

    if-nez v2, :cond_2

    .line 82
    :cond_0
    invoke-static {}, Lcom/android/camera/util/PermissionUtil;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "permissions is null or empty ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), Skip it!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    move v0, v1

    .line 128
    :cond_1
    :goto_0
    return v0

    .line 86
    :cond_2
    iget-object v2, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->mPermissionCode:Lcom/android/camera/util/PermissionUtil$PermissionCode;

    invoke-virtual {v2}, Lcom/android/camera/util/PermissionUtil$PermissionCode;->getPermissionRequest()I

    move-result v2

    if-ne p1, v2, :cond_6

    .line 87
    array-length v2, p3

    if-lez v2, :cond_3

    aget v2, p3, v1

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->mRequestPermission:Ljava/lang/String;

    aget-object v3, p2, v1

    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->mRequestPermission:Ljava/lang/String;

    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->mRequestPermission:Ljava/lang/String;

    .line 93
    invoke-static {v0, v2}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 94
    iget-object v0, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->mActivity:Landroid/app/Activity;

    iget v3, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->mErrorRequestResourceId:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_4
    :goto_1
    move v0, v1

    .line 128
    goto :goto_0

    .line 97
    :cond_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08001c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->mActivity:Landroid/app/Activity;

    const v3, 0x7f08012f

    .line 98
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->mActivity:Landroid/app/Activity;

    const v3, 0x7f08012e

    .line 99
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/camera/util/PermissionUtil$PermissionCheck$3;

    invoke-direct {v3, p0}, Lcom/android/camera/util/PermissionUtil$PermissionCheck$3;-><init>(Lcom/android/camera/util/PermissionUtil$PermissionCheck;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->mActivity:Landroid/app/Activity;

    const v3, 0x7f080128

    .line 109
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/camera/util/PermissionUtil$PermissionCheck$2;

    invoke-direct {v3, p0}, Lcom/android/camera/util/PermissionUtil$PermissionCheck$2;-><init>(Lcom/android/camera/util/PermissionUtil$PermissionCheck;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_1

    .line 118
    :cond_6
    iget-object v2, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->mPermissionCode:Lcom/android/camera/util/PermissionUtil$PermissionCode;

    invoke-virtual {v2}, Lcom/android/camera/util/PermissionUtil$PermissionCode;->getPermissionRequestAgain()I

    move-result v2

    if-ne p1, v2, :cond_4

    .line 119
    iget-object v2, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->mRequestPermission:Ljava/lang/String;

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 120
    array-length v2, p3

    if-lez v2, :cond_7

    aget v2, p3, v1

    if-eqz v2, :cond_1

    .line 124
    :cond_7
    iget-object v0, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->mActivity:Landroid/app/Activity;

    iget v3, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->mErrorRequestResourceId:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public permissionCheck()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 57
    iget-object v1, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->mRequestPermission:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 60
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f08001c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 61
    iget-object v1, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->mActivity:Landroid/app/Activity;

    const v2, 0x7f08012d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->mActivity:Landroid/app/Activity;

    const v3, 0x7f080127

    .line 62
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/camera/util/PermissionUtil$PermissionCheck$1;

    invoke-direct {v3, p0}, Lcom/android/camera/util/PermissionUtil$PermissionCheck$1;-><init>(Lcom/android/camera/util/PermissionUtil$PermissionCheck;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 71
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 77
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->mRequestPermission:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/camera/util/PermissionUtil$PermissionCheck;->mPermissionCode:Lcom/android/camera/util/PermissionUtil$PermissionCode;

    .line 75
    invoke-virtual {v3}, Lcom/android/camera/util/PermissionUtil$PermissionCode;->getPermissionRequest()I

    move-result v3

    .line 73
    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0
.end method
