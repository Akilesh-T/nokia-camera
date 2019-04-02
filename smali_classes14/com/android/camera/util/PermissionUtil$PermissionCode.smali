.class public Lcom/android/camera/util/PermissionUtil$PermissionCode;
.super Ljava/lang/Object;
.source "PermissionUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/util/PermissionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionCode"
.end annotation


# instance fields
.field private mPermissionRequest:I

.field private mPermissionRequestAgain:I

.field private mPermissionRequestCode:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "permissionRequest"    # I
    .param p2, "permissionRequestAgain"    # I
    .param p3, "permissionRequestCode"    # I

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput p1, p0, Lcom/android/camera/util/PermissionUtil$PermissionCode;->mPermissionRequest:I

    .line 153
    iput p2, p0, Lcom/android/camera/util/PermissionUtil$PermissionCode;->mPermissionRequestAgain:I

    .line 154
    iput p3, p0, Lcom/android/camera/util/PermissionUtil$PermissionCode;->mPermissionRequestCode:I

    .line 155
    return-void
.end method


# virtual methods
.method public getPermissionRequest()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/android/camera/util/PermissionUtil$PermissionCode;->mPermissionRequest:I

    return v0
.end method

.method public getPermissionRequestAgain()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/android/camera/util/PermissionUtil$PermissionCode;->mPermissionRequestAgain:I

    return v0
.end method

.method public getPermissionRequestCode()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/android/camera/util/PermissionUtil$PermissionCode;->mPermissionRequestCode:I

    return v0
.end method
