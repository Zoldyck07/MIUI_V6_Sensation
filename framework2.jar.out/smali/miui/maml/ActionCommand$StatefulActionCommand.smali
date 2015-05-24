.class abstract Lmiui/maml/ActionCommand$StatefulActionCommand;
.super Lmiui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "StatefulActionCommand"
.end annotation


# instance fields
.field private mVar:Lmiui/maml/util/IndexedNumberVariable;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V
    .locals 2
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "stateName"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/elements/ScreenElement;)V

    .line 70
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$StatefulActionCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, p2, v1}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/ActionCommand$StatefulActionCommand;->mVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 71
    return-void
.end method


# virtual methods
.method protected final updateState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lmiui/maml/ActionCommand$StatefulActionCommand;->mVar:Lmiui/maml/util/IndexedNumberVariable;

    if-nez v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lmiui/maml/ActionCommand$StatefulActionCommand;->mVar:Lmiui/maml/util/IndexedNumberVariable;

    int-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 77
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$StatefulActionCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    goto :goto_0
.end method