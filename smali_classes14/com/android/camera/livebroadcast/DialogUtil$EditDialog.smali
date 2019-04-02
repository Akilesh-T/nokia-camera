.class public Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;
.super Ljava/lang/Object;
.source "DialogUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/livebroadcast/DialogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$EditDialogListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCurrentIndex:I

.field private mHandler:Landroid/os/Handler;

.field private mList:[Ljava/lang/String;

.field private mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-class v1, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;[Ljava/lang/String;I)V
    .locals 1
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "statusCallbacks"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
    .param p3, "list"    # [Ljava/lang/String;
    .param p4, "currentIndex"    # I

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->mHandler:Landroid/os/Handler;

    .line 87
    iput-object p1, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->mActivity:Lcom/android/camera/CameraActivity;

    .line 88
    iput-object p2, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    .line 89
    iput-object p3, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->mList:[Ljava/lang/String;

    .line 90
    iput p4, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->mCurrentIndex:I

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    return-object v0
.end method

.method static synthetic access$100()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    sget-object v0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "hide()+"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->onConfigurationChanged(I)V

    .line 170
    iget-object v0, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->onDialogDismissed()V

    .line 171
    iget-object v0, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setRequestedOrientation(I)V

    .line 172
    iget-object v0, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 174
    sget-object v0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "hide()-"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 176
    :cond_0
    return-void
.end method

.method public show(Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$EditDialogListener;)V
    .locals 14
    .param p1, "listener"    # Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$EditDialogListener;

    .prologue
    .line 94
    sget-object v0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "show()+"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setRequestedOrientation(I)V

    .line 96
    iget-object v0, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->freezeScreenUntilDialogDismiss()V

    .line 97
    iget-object v0, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/android/camera/util/OrientationUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v11

    .line 98
    .local v11, "orientation":I
    sget-object v0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "show() orientation="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/camera/app/CameraAppUI;->onConfigurationChanged(I)V

    .line 100
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 101
    .local v7, "editDialog":Landroid/app/AlertDialog$Builder;
    iget-object v0, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 102
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f040047

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 103
    .local v9, "layout":Landroid/view/View;
    const-string v0, "ro.product.nickname"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 104
    .local v10, "nickName":Ljava/lang/String;
    const v0, 0x7f0f0134

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 105
    .local v2, "editText":Landroid/widget/EditText;
    iget-object v0, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f08034f

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v10, v5, v13

    invoke-virtual {v0, v1, v5}, Lcom/android/camera/CameraActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 106
    const v0, 0x7f0f0136

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 107
    .local v4, "spinner":Landroid/widget/Spinner;
    const v0, 0x7f0f0135

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 108
    .local v12, "tvBroadcastTo":Landroid/widget/TextView;
    iget-object v0, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->mList:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->mList:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 109
    .local v3, "shouldHide":Z
    :goto_0
    if-eqz v3, :cond_2

    .line 110
    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 111
    const/16 v0, 0x8

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    :goto_1
    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 123
    const v13, 0x7f0800c1

    new-instance v0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$1;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$1;-><init>(Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;Landroid/widget/EditText;ZLandroid/widget/Spinner;Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$EditDialogListener;)V

    invoke-virtual {v7, v13, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 133
    const v0, 0x7f0800c0

    new-instance v1, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$2;

    invoke-direct {v1, p0}, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$2;-><init>(Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;)V

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 143
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 144
    new-instance v0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$3;

    invoke-direct {v0, p0}, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$3;-><init>(Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;)V

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 157
    iget-object v0, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$4;

    invoke-direct {v1, p0, v7}, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog$4;-><init>(Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 163
    sget-object v0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "show()-"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 164
    return-void

    .line 108
    .end local v3    # "shouldHide":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 113
    .restart local v3    # "shouldHide":Z
    :cond_2
    new-instance v6, Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f040048

    iget-object v5, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->mList:[Ljava/lang/String;

    invoke-direct {v6, v0, v1, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 115
    .local v6, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v4, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 116
    iget v0, p0, Lcom/android/camera/livebroadcast/DialogUtil$EditDialog;->mCurrentIndex:I

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 117
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 118
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
