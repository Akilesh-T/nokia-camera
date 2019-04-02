.class public Lcom/google/common/logging/eventprotos$NavigationChange$InteractionCause;
.super Ljava/lang/Object;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/eventprotos$NavigationChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InteractionCause"
.end annotation


# static fields
.field public static final BUTTON:I = 0x2710

.field public static final SWIPE_DOWN:I = 0x2710

.field public static final SWIPE_LEFT:I = 0x2710

.field public static final SWIPE_RIGHT:I = 0x2710

.field public static final SWIPE_UP:I = 0x2710


# instance fields
.field final synthetic this$1:Lcom/google/common/logging/eventprotos$NavigationChange;


# direct methods
.method public constructor <init>(Lcom/google/common/logging/eventprotos$NavigationChange;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/common/logging/eventprotos$NavigationChange;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/common/logging/eventprotos$NavigationChange$InteractionCause;->this$1:Lcom/google/common/logging/eventprotos$NavigationChange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
