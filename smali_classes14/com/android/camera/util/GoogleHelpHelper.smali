.class public Lcom/android/camera/util/GoogleHelpHelper;
.super Ljava/lang/Object;
.source "GoogleHelpHelper.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public getGoogleHelpIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public launchGoogleHelp()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public sendGoogleFeedback(ILjava/lang/Exception;)V
    .locals 0
    .param p1, "category"    # I
    .param p2, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 35
    return-void
.end method
