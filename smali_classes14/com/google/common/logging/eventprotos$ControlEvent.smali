.class public Lcom/google/common/logging/eventprotos$ControlEvent;
.super Ljava/lang/Object;
.source "eventprotos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/eventprotos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ControlEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/eventprotos$ControlEvent$ControlType;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/logging/eventprotos;


# direct methods
.method public constructor <init>(Lcom/google/common/logging/eventprotos;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/logging/eventprotos;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/common/logging/eventprotos$ControlEvent;->this$0:Lcom/google/common/logging/eventprotos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
