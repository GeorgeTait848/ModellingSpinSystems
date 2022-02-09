function renormalisedState = renormaliseState(state)


stateMag = vectorMagnitude(state);


renormalisedState = state/stateMag;

end



