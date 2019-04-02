.class public Lcom/android/camera/ui/operation/BottomCaptureLayoutOperation;
.super Landroid/widget/FrameLayout;
.source "BottomCaptureLayoutOperation.java"


# instance fields
.field protected mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/operation/BottomCaptureLayoutOperation;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    .line 15
    return-void
.end method


# virtual methods
.method public setCaptureLayoutHelper(Lcom/android/camera/CaptureLayoutHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/android/camera/CaptureLayoutHelper;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/camera/ui/operation/BottomCaptureLayoutOperation;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    .line 22
    return-void
.end method
